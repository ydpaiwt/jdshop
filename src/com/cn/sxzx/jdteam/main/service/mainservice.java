package com.cn.sxzx.jdteam.main.service;

import com.cn.sxzx.jdteam.javaBean.pojo.Product;
import com.cn.sxzx.jdteam.javaBean.vo.ProductImg;
import com.cn.sxzx.jdteam.javaBean.vo.ProductXi;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/28 16:58
 */
public interface mainservice {
    //根据id查找产品信息
    ProductXi getGoods(int id);


    List<String> getGoodImgs(int product_id);
}
