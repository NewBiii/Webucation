package com.ssy.service;


import com.ssy.entity.UserEntity;

import java.util.List;

public interface  IUserService {
	public int login(String username, String password) ;
	public int register(UserEntity userEntity) ;

	public UserEntity getUserById(String username) ;
	public List<UserEntity> getAllUserById(UserEntity record) ;
	public int insertUser(UserEntity user);
	public int deleteUser(UserEntity user);
	public int updateUser(UserEntity user);
	public int transUser(UserEntity user);
}
