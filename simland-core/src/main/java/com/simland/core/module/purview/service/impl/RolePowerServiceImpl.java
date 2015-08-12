package com.simland.core.module.purview.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.simland.core.module.purview.entity.RolePower;
import com.simland.core.module.purview.mapper.RolePowerMapper;
import com.simland.core.module.purview.service.IRolePowerService;

@Service("rolePowerService")
@Transactional(rollbackFor = java.lang.Exception.class)
public class RolePowerServiceImpl implements IRolePowerService{

	@Autowired
	private RolePowerMapper rolePowerMapper;
	
	public Integer insertRolePower(RolePower rolePower) {
		return rolePowerMapper.insertRolePower(rolePower);
	}

	public Integer updateRolePower(RolePower rolePower) {
		return rolePowerMapper.updateRolePower(rolePower);
	}
	
	public Integer deleteRolePower(Integer id) {
		return rolePowerMapper.deleteRolePower(id);
	}
	
	public RolePower getRolePower(Map param) {
		return (RolePower)rolePowerMapper.getRolePower(param);
	}
	
	public List<RolePower> getRolePowerList(Map param) {
		return rolePowerMapper.getRolePowerList(param);
	}
	
	public Integer getRolePowerCount(Map param) {
		return (Integer)rolePowerMapper.getRolePowerCount(param);
	}
	
	public List<RolePower> getSplitRolePowerList(Map param) {
		return rolePowerMapper.getSplitRolePowerList(param);
	}
	
}
