package com.test.dao;

import org.apache.commons.io.FileUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class TestDao {
	FileUtils util;
	Log log = LogFactory.getLog(TestDao.class);
	public String getTest(String name) {
		return name;
	}
}
