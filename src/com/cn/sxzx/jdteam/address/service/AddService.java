package com.cn.sxzx.jdteam.address.service;

import com.cn.sxzx.jdteam.javaBean.pojo.Address;

import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:11
 */
public interface AddService {
    List<Address> selectCon(int user_id);

    void addContion(Address address1);

    void deleteCon(int id);
}
