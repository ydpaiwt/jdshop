package com.cn.sxzx.jdteam.main.service.imp;

import com.cn.sxzx.jdteam.javaBean.pojo.Product;
import com.cn.sxzx.jdteam.javaBean.vo.ProductImg;
import com.cn.sxzx.jdteam.javaBean.vo.ProductXi;
import com.cn.sxzx.jdteam.main.dao.mainDao;
import com.cn.sxzx.jdteam.main.service.mainservice;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/28 16:59
 */
public class mainServiceImp implements mainservice {
     mainDao dao = new mainDao();


    @Override
    public ProductXi getGoods(int id) {
        return dao.getGoods(id);
    }

    @Override
    public List<String> getGoodImgs(int product_id) {
        return dao.getGoodImgs(product_id);
    }
}
