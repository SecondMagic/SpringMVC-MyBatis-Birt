package com.report.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.report.mapper.deptMapper;
import com.report.model.dept;

@Service
public class deptService {
	@Autowired
	private deptMapper mapper;
	public dept getAllDept(String paramMap){
		return mapper.getAllDept(paramMap);
	}
}
