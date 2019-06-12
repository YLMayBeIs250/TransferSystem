package com.mss.service.impl;

import java.util.List;

import com.mss.mappers.AdminMapper;
import com.mss.models.Admin;
import com.mss.service.AdminServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminServiceInterface {
	@Autowired
	private AdminMapper mapper;
	public List<Admin> selectAllAdmin() {
		// TODO Auto-generated method stub
		return mapper.selectAllAdmin();
	}

	public List<Admin> selectAllCkAdmin() {
		// TODO Auto-generated method stub
		return mapper.selectAllCkAdmin();
	}

	public Admin selectAdminById(int i) {
		// TODO Auto-generated method stub
		return mapper.selectAdminById(i);
	}
}
