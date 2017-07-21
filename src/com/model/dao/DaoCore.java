package com.model.dao;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class DaoCore {
	SqlMapClient sqlMapClient = null;
	
	public DaoCore(){
		String resource = "com/model/sqlConfig/iBatisSqlMapConfig.xml";
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public SqlMapClient getSqlMapClient() {
		return sqlMapClient;
	}
}
