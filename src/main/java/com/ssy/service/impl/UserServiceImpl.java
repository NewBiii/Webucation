package com.ssy.service.impl;

import com.ssy.consts.Consts;
import com.ssy.dao.UserEntityMapper;
import com.ssy.entity.UserEntity;
import com.ssy.service.IUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
	public int login(String username,String password) 
	{
    	int iRet = Consts.RESULT_FAILURE;
		UserEntity userEntity = userMapper.selectByPrimaryKey(username);

		if (userEntity != null && password.equals(userEntity.getUserpassword()))
		{
			iRet = Consts.RESULT_SUCCESS;
		} 
        return iRet;  
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
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int transUser(UserEntity user)
	{
			 this.userMapper.insert(user);
			 user.setUserid("zxy01");
			 this.userMapper.insert(user);

		 return 1;
	}

}  