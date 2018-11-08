package demo.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


@Component
public class OffersDao {

	private NamedParameterJdbcTemplate jdbc;

	public NamedParameterJdbcTemplate getJdbc() {
		return jdbc;
	}
	
	public OffersDao() {
		System.out.println("successfully loaded");
	}
	
	
	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Offer> getOffers() {


		return jdbc.query("select * from offers ", new RowMapper<Offer>() {

			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {

				Offer offer = new Offer();
				offer.setId(rs.getInt("id"));
				offer.setEmail(rs.getString("email"));
				offer.setName(rs.getString("name"));
				offer.setEnquiry(rs.getString("enquiry"));

				return offer;
			}

		});
		
	}
		
		public Offer getOffer(int id) {

			MapSqlParameterSource params = new MapSqlParameterSource();
			params.addValue("id", id);
			return jdbc.queryForObject("select * from offers where id=:id", params, new RowMapper<Offer>() {

				public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {

					Offer offer = new Offer();
					offer.setId(rs.getInt("id"));
					offer.setEmail(rs.getString("email"));
					offer.setName(rs.getString("name"));
					offer.setEnquiry(rs.getString("enquiry"));

					return offer;
				}

			});
			

	}
		

		public boolean delete(int id) {
			MapSqlParameterSource params = new MapSqlParameterSource();
			params.addValue("id", id);
			System.out.println("delete method initiated");
			return jdbc.update("delete from offers where id=:id", params)==1;
			
		}
		
		public boolean create(Offer offer) {
			BeanPropertySqlParameterSource params=new BeanPropertySqlParameterSource(offer);
			System.out.println(params.toString());
			return jdbc.update("insert into offers (id, name, email, enquiry) values (:id, :name, :email, :enquiry)", params)==1;
			
		}
		
		public boolean update(Offer offer) {
			BeanPropertySqlParameterSource params=new BeanPropertySqlParameterSource(offer);
			return jdbc.update("update offers set name=:name, email=:email, enquiry=:enquiry where id=:id", params)==1;
			
		}
		@Transactional
		public int[] create(List<Offer> offers) {
			SqlParameterSource[] params=SqlParameterSourceUtils.createBatch(offers.toArray());
			
		return jdbc.batchUpdate("insert into offers (id, name, email, enquiry) values (:id, :name, :email, :enquiry)", params);
		
		
}
}