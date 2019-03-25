package spring.struts.hibernate.dao;

import java.util.List;

import spring.struts.hibernate.entity.Department;
/**
 * 部门管理的Dao层接口
 * @author 开发
 *
 */
public interface DepartmentDao {

	int findCount();

	List<Department> findByPage(int begin, int pageSize);

	void save(Department department);

	void update(Department department);

	Department findById(Integer did);

	void delete(Department department);

	List<Department> findAll();

}
