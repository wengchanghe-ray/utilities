package com.test.services;

import com.test.dao.TestDao;

public class TestService {
	private TestDao testDao = new TestDao();
	
	public String loadTest(String name) {
		return testDao.getTest(name);
	}
}
