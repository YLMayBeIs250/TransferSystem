package com.mss.mappers;

import com.mss.models.User;

import java.util.List;

public interface UserMapper {
	public List<User> selectAllUser();
	public User selectUserById(int i);
	public void addUser(User user);
	public void addAddress(User user);
	public void deleteAddress(User user);
	public void updateUserInfo(User user);
}
