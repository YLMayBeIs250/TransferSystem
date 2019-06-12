package com.mss.service;

import java.util.List;
import com.mss.models.Admin;

public interface AdminServiceInterface {
	public List<Admin> selectAllAdmin();
	public Admin selectAdminById(int i);
	public List<Admin> selectAllCkAdmin();
}
