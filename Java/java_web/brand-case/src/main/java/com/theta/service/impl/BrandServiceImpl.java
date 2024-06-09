package com.theta.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.theta.mapper.BrandMapper;
import com.theta.pojo.Brand;
import com.theta.pojo.PageBean;
import com.theta.service.BrandService;
import com.theta.util.SqlSessionFactoryUtils;

public class BrandServiceImpl implements BrandService {
	SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

	@Override
	public List<Brand> selectAll() {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		List<Brand> brands = mapper.selectAll();

		sqlSession.close();

		return brands;
	}

	@Override
	public void add(Brand brand) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.add(brand);
		sqlSession.commit();

		sqlSession.close();
	}

	@Override
	public void deleteByIds(int[] ids) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.deleteByIds(ids);
		sqlSession.commit();

		sqlSession.close();
	}

	@Override
	public PageBean<Brand> selectByPage(int currentPage, int pageSize) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		int begin = (currentPage - 1) * pageSize;
		int size = pageSize;

		List<Brand> rows = mapper.selectByPage(begin, size);

		int totalCount = mapper.selectTotalCount();

		PageBean<Brand> pageBean = new PageBean<>();
		pageBean.setRows(rows);
		pageBean.setTotalCount(totalCount);

		sqlSession.close();

		return pageBean;
	}

	@Override
	public void deleteById(int id) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.deleteById(id);
		sqlSession.commit();

		sqlSession.close();
	}

	@Override
	public void update(Brand brand) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		mapper.update(brand);
		sqlSession.commit();

		sqlSession.close();
	}

	@Override
	public Brand selectById(int id) {
		SqlSession sqlSession = factory.openSession();

		BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

		Brand brand = mapper.selectById(id);

		sqlSession.close();

		return brand;
	}

}
