package com.mss.service.impl;

import com.mss.mappers.UserMapper;
import com.mss.models.User;
import com.mss.service.UserServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserServiceInterface {
	@Autowired
	private UserMapper mapper;
	public List<User> selectAllUser() {
		// TODO Auto-generated method stub
		return mapper.selectAllUser();
	}

	public User selectUserById(int i) {
		// TODO Auto-generated method stub
		return mapper.selectUserById(i);
	}

	public void addUser(User user) {
		// TODO Auto-generated method stub
		mapper.addUser(user);
	}

	public void addAddress(User user) {
		// TODO Auto-generated method stub
		mapper.addAddress(user);
	}

	public void deleteAddress(User user) {
		// TODO Auto-generated method stub
		mapper.deleteAddress(user);
	}

	public void updateUserInfo(User user) {
		// TODO Auto-generated method stub
		mapper.updateUserInfo(user);
	}
}
