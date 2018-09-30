package com.safwan.dao;

import java.util.List;

import com.safwan.model.Users;

public interface UserManagerDao {

	public Users getUser(String email);

	public void registerUser(Users user);

	public List<Users> getAllUsers();
}
