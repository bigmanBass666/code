package com.theta.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.theta.mapper.BrandMapper;
import com.theta.pojo.Brand;
import com.theta.util.SqlSessionFactoryUtils;

public class BrandService {
	SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

	/**
	 * 查询所有
	 * 
	 * @return
	 */
	public List<Brand> selectAll() {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		List<Brand> brands = mapper.selectAll();

		sqlSession.close();

		return brands;
	}

	public void add(Brand brand) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.add(brand);

		sqlSession.commit();

		sqlSession.close();
	}

	public Brand selectById(int id) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		Brand brand = mapper.selectById(id);

		sqlSession.close();

		return brand;
	}

	public void update(Brand brand) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.update(brand);

		sqlSession.commit();

		sqlSession.close();
	}

	public void delete(int id) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.delete(id);

		sqlSession.commit();

		sqlSession.close();
	}
}
