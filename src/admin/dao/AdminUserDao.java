package admin.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import admin.domain.AdminUser;
import admin.utils.DataSourceUtils;

public class AdminUserDao {

	//查询管理员账户
	public AdminUser login(String username, String password) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from adminUser where username=? and password=?";
		return runner.query(sql, new BeanHandler<AdminUser>(AdminUser.class),username,password);
	}

}
