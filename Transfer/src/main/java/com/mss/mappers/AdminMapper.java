package com.mss.mappers;

import java.util.List;
import com.mss.models.Admin;

public interface AdminMapper {
	public List<Admin> selectAllAdmin();
    public Admin selectAdminById(int i);
    public List<Admin> selectAllCkAdmin();
}

