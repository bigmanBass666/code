package com.theta.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.theta.pojo.Brand;

public interface BrandMapper {
	List<Brand> selectAll();

	void add(Brand brand);

	/**
	 * 批量删除
	 * 
	 * @param ids
	 */
	void deleteByIds(@Param("ids") int[] ids);

	/**
	 * 根据id删除
	 * 
	 * @param id
	 */
	void deleteById(int id);

	/**
	 * 分页查询
	 * 
	 * @param begin
	 * @param size
	 * @return
	 */
	List<Brand> selectByPage(@Param("begin") int begin, @Param("size") int size);

	/**
	 * 总记录数
	 * 
	 * @return
	 */
	int selectTotalCount();

	/**
	 * 修改
	 * 
	 * @param brand
	 */
	void update(Brand brand);

	/**
	 * 根据id查找
	 * 
	 * @param id
	 * @return
	 */
	Brand selectById(int id);
}
