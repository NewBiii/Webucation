package com.ssy.service.impl;

import com.ssy.consts.Consts;
import com.ssy.dao.UserEntityMapper;
import com.ssy.entity.UserEntity;
import com.ssy.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {
    
	//如果把这一句去掉的话，就会报错
	//java.lang.NullPointerException：
	//at ssmdemo.service.impl.UserServiceImpl.getUserById(UserServiceImpl.java:22)
	@Resource
    private UserEntityMapper userMapper;
    
    @Override
	public UserEntity login(String userid,String password)
	{
    	int iRet = Consts.RESULT_FAILURE;
		UserEntity userEntity = this.userMapper.selectByPrimaryKey(userid);

		if (userEntity != null && password.equals(userEntity.getUserpassword()))
		{
			iRet = Consts.RESULT_SUCCESS;
			return userEntity;
		} 
        return null;
	}

    @Override  
	public int register(UserEntity userEntity) 
	{
    	int iRet = Consts.RESULT_FAILURE;
    	
    	UserEntity userFromDB = userMapper.selectByPrimaryKey(userEntity.getUserid());
    	
    	if (userFromDB!=null)
    	{
    		iRet = Consts.RESULT_NOT_UNIQUE;
    	}
    	else
    	{
	    	iRet = userMapper.insertSelective(userEntity);
	
			if (iRet>0)
			{
				iRet = Consts.RESULT_SUCCESS;
			} 
    	}
        return iRet;  
	}

    @Override
    public UserEntity getUserById(String userName)  {  
        return this.userMapper.selectByPrimaryKey(userName);  
    }

    @Override
    public List<UserEntity> getAllUserById(UserEntity record)  {  
        return this.userMapper.getAllUser(record);  
    }

    
	@Override
	public int insertUser(UserEntity user) {
		return this.userMapper.insert(user);
	}  

	@Override
	public int deleteUser(UserEntity user){
		return this.userMapper.deleteByPrimaryKey(user.getUserid());
	}
	
	@Override
	public int updateUser(UserEntity user)
	{
		return this.userMapper.updateByPrimaryKey(user);
	}

}  