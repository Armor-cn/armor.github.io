package com.armor.mblog;

import com.armor.mblog.base.utils.ImageUtils;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import com.upyun.UpYunUtils;

import java.io.File;
import java.io.IOException;

/**
 * created by wcm
 * on 2019/1/22
 */
public class QiniuOSSTest {
    private static final String accessKey = "SzwCIdeU8xbBGnKGg03_vaRPpMzemz5leklyGoPY";
    private static final String secretKey = "ycgBuc2GNxlBKoZCdxF6-7Oj7ZS3CNcYrGzSJrJu";
    private static final String domain = "http://ptztir4d2.bkt.clouddn.com";
    private static final String bucket = "armor";

    public static void main(String[] args) throws IOException, InterruptedException {
        File file = new File("E://data/14.jpg");
        byte[] bytes = ImageUtils.screenshot(file, 360, 200);
        final String key = "/static" + UpYunUtils.md5(bytes) + ".jpg";
        System.out.println("key: " + key);
        Zone z = Zone.autoZone();
        Configuration configuration = new Configuration(z);

        final Auth auth = Auth.create(accessKey, secretKey);
        final String upToken = auth.uploadToken(bucket, key);
        try {
            final UploadManager uploadManager = new UploadManager(configuration);
            final Response response = uploadManager.put(bytes, key, upToken);
            System.out.println(response.bodyString());
            System.out.println(response.isOK());
        } catch (QiniuException e) {
            final Response r = e.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
        String filePath = domain.trim()+ key + ".jpg";
        System.out.println(filePath);
    }
}
