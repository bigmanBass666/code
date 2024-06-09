package com.theta.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.theta.pojo.Brand;
import com.theta.pojo.PageBean;

public interface BrandService {
	/**
	 * 查询所有
	 * 
	 * @return
	 */
	List<Brand> selectAll();

	/**
	 * 新增
	 * 
	 * @param brand
	 */
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
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	PageBean<Brand> selectByPage(int currentPage, int pageSize);

	/**
	 * 修改
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
