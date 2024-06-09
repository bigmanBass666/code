package com.theta.mapper;

import java.util.List;

import com.theta.pojo.Brand;

public interface BrandMapper {
	/**
	 * 查询所有
	 * @return
	 */
	List<Brand>	selectAll();

	/**
	 * 添加品牌
	 * @param brand
	 */
	void add(Brand brand);

	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	Brand selectById(int id);

	/**
	 * 修改
	 */
	void update(Brand brand);

	/**
	 * 删除
	 * @param brand
	 */
	void delete(int id);
}
