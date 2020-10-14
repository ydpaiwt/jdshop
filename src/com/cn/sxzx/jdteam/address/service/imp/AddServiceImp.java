package com.cn.sxzx.jdteam.address.service.imp;

import com.cn.sxzx.jdteam.address.dao.AddDao;
import com.cn.sxzx.jdteam.address.service.AddService;
import com.cn.sxzx.jdteam.javaBean.pojo.Address;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:11
 */
public class AddServiceImp implements AddService {
    AddDao dao = new AddDao();


    @Override
    public List<Address> selectCon(int user_id) {
        return dao.selectadd(user_id);
    }

    @Override
    public void addContion(Address address1) {
        dao.addContion(address1);
    }

    @Override
    public void deleteCon(int id) {
        dao.deleteCon(id);
    }
}
