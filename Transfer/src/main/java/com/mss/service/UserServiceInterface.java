package com.mss.service;

import com.mss.models.User;
import java.util.List;

public interface UserServiceInterface {
	public List<User> selectAllUser();
    public User selectUserById(int i);
	public void addUser(User user);
	public void addAddress(User user);
	public void deleteAddress(User user);
	public void updateUserInfo(User user);
}
