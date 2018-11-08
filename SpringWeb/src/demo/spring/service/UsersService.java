package demo.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.spring.dao.User;
import demo.spring.dao.UsersDao;

@Service("usersService")
public class UsersService {

private UsersDao usersDao;

@Autowired
public void setUsersDao(UsersDao usersDao) {
	this.usersDao = usersDao;
}


public void create(User user) {
	usersDao.create(user);
}

}
