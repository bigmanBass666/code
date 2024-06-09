package com.theta.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.theta.mapper.BrandMapper;
import com.theta.pojo.Brand;

public class MyBatisTest {
    @Test
    public void testSelectAll() throws IOException {
        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        List<Brand> brands = brandMapper.selectAll();
        System.out.println(brands);

        sqlSession.close();
    }

    @Test
    public void testSelectById() throws IOException {
        int id = 1;

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        Brand brands = brandMapper.selectById(id);
        System.out.println(brands);

        sqlSession.close();
    }

    @Test
    public void selectByCondition() throws IOException {
        int status = 1;
        String brandName = "华为";
        String companyName = "华为";

        brandName = "%" + brandName + "%";
        companyName = "%" + companyName + "%";

        // 对象参数
        // Brand HuaWei = new Brand();
        // HuaWei.setBrandName(brandName);
        // HuaWei.setCompanyName(companyName);
        // HuaWei.setStatus(status);

        // map
        Map map = new HashMap();
        // map.put("status", status);
        map.put("companyName", companyName);
        map.put("brandName", brandName);

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        // List<Brand> brands = brandMapper.selectByCondition(status, brandName,
        // companyName); // 散装参数

        // List<Brand> brands = brandMapper.selectByCondition(HuaWei); // 对象参数

        List<Brand> brands = brandMapper.selectByCondition(map); // map

        System.out.println(brands);

        sqlSession.close();
    }

    @Test
    public void selectByConditionSingle() throws IOException {
        int status = 1;
        String brandName = "华为";
        String companyName = "华为";

        brandName = "%" + brandName + "%";
        companyName = "%" + companyName + "%";

        // 对象参数
        Brand HuaWei = new Brand();
        // HuaWei.setBrandName(brandName);
        // HuaWei.setCompanyName(companyName);
        // HuaWei.setStatus(status);

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        List<Brand> brands = brandMapper.selectByConditionSingle(HuaWei); // 对象参数

        System.out.println(brands);

        sqlSession.close();
    }

    @Test
    public void testAdd() throws IOException {
        int status = 1;
        String brandName = "shitBrand";
        String companyName = "shitCompany";
        int ordered = 100;
        String description = "sth shit stuff";

        // 对象参数
        Brand HuaWei = new Brand();
        HuaWei.setBrandName(brandName);
        HuaWei.setCompanyName(companyName);
        HuaWei.setStatus(status);
        HuaWei.setOrdered(ordered);
        HuaWei.setDescription(description);

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        brandMapper.add(HuaWei);

        System.out.println("HuaWei's id: " + HuaWei.getId());

        sqlSession.close();
    }

    @Test
    public void testUpdate() throws IOException {
        int status = 1;
        String brandName = "fuckBrand";
        String companyName = "fuckCompany";
        int ordered = 300;
        String description = "sth fuck stuff new";
        int id = 6;

        // 对象参数
        Brand HuaWei = new Brand();
        // HuaWei.setBrandName(brandName);
        // HuaWei.setCompanyName(companyName);
        // HuaWei.setStatus(status);
        // HuaWei.setOrdered(ordered);
        HuaWei.setDescription(description);
        HuaWei.setId(id);

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        int lineCount = brandMapper.update(HuaWei);

        System.out.println("lineCount: " + lineCount);

        System.out.println("HuaWei's id: " + HuaWei.getId());

        sqlSession.close();
    }

    @Test
    public void testDeleteById() throws IOException {
        int id = 6;

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        brandMapper.deleteById(id);

        sqlSession.close();
    }

    @Test
    public void testDeleteByIds() throws IOException {
        int[] ids = { 7, 8 };

        // 1. 加载myBatis的核心配置文件，获取 SqLSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);

        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

        brandMapper.deleteByIds(ids);

        sqlSession.close();
    }
}
