package protect.build.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import protect.build.dao.UserMapper;
import protect.build.model.User;
import protect.build.model.UserExample;

@Service
public class UserService {
	@Autowired
	UserMapper userMapper;
	public User checkUser(String userId,String password){
		UserExample example = new UserExample();
		example.createCriteria().andUserNameEqualTo(userId).andUserPasswordEqualTo(password);
		List<User> list = userMapper.selectByExample(example);
		if(list==null||list.size()==0){
			return null;
		}else{
			
			return list.get(0);
		}
	}

}
