package com.theta.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.theta.pojo.Brand;

public interface BrandMapper {
    List<Brand> selectAll();

    /**
     * 单参数
     * 
     * @param id
     */
    // @Select("select * from tb_brand where id = #{id}")
    Brand selectById(Integer id);

    // 多参数

    /**
     * 散装参数 @param注解
     * 
     * @param status
     * @param companyName
     * @param brandName
     * @return
     */
    // List<Brand> selectByCondition(@Param("status") int status,
    // @Param("companyName") String companyName,
    // @Param("brandName") String brandName);

    /**
     * 对象参数
     * 
     * @param brand
     * @return
     */
    List<Brand> selectByCondition(Brand brand);

    /**
     * map
     * 
     * @param map
     * @return
     */
    List<Brand> selectByCondition(Map map);

    /**
     * 单条件查询
     */
    List<Brand> selectByConditionSingle(Brand brand);

    /**
     * 添加
     */
    void add(Brand brand);

    /**
     * 修改
     */
    int update(Brand brand);

    /**
     * 删除
     */
    void deleteById(int id);

    /**
     * 批量删除
     */
    void deleteByIds(@Param("ids") int[] ids);

    List<Brand> select(@Param("brandName") String bandName, @Param("companyName") String companyName);
}
