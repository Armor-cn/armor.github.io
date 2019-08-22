package com.armor.mblog;

import com.armor.mblog.base.utils.ImageUtils;

public class ImageUtilsTest {
    public static void main(String[] args) throws Exception {
        byte[] bytes = ImageUtils.download("http://armor.ac.cn/storage/avatars/000/000/001_240.jpg");
        System.out.println("bytes:"+bytes);
    }

}
