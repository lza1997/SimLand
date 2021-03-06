package com.simland.core.module.user.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.simland.core.base.MD5Util;
import com.simland.core.base.SysMessage;
import com.simland.core.base.Utils;
import com.simland.core.module.user.entity.User;
import com.simland.core.module.user.mapper.UserMapper;
import com.simland.core.module.user.service.IUserService;

@Service("userService")
@Transactional(readOnly=true)
public class UserServiceImpl implements IUserService, UserDetailsService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> getUserList(Map<String, Object> param) {
		return userMapper.getUserList(null);
	}

	@Override
	public User login(String uname, String password, SysMessage msg) {

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("uname", uname);
		User user = userMapper.getUser(param);
		if (Utils.isObjectEmpty(user)) {
			msg.setCode("1");
			msg.setMsg("用户名不存在");
			return null;
		}

		if (user.getPassword().equalsIgnoreCase(MD5Util.encode(password.getBytes()))) {
			msg.setCode("2");
			msg.setMsg("登录成功");
			return user;
		} else {
			msg.setCode("3");
			msg.setMsg("用户名或密码错误");
			return null;
		}

	}

	/****
	 * 登录安全验证
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("uname", username);

		List users = userMapper.getUserList(param);
		if (users == null || users.isEmpty()) {
			return null;
		} else {
			return (UserDetails) users.get(0);
		}
	}

	@Override
	public User getUser(Integer id) {

		if (id == null)
			return null;

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		return userMapper.getUser(param);
	}

}
