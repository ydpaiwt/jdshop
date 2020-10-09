package com.cn.sxzx.jdteam.utils;

import java.io.*;

/**
 * 封装读取图片的流
 * */
public class ImageUtil {
    // 读取本地图片获取输入流
     public static FileInputStream readImage(String path) throws IOException {
         return new FileInputStream(new File(path));
     }
}
