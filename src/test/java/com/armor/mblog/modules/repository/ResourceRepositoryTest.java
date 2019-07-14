package com.armor.mblog.modules.repository;

import com.armor.mblog.BootApplication;
import com.armor.mblog.modules.entity.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 * pic repo test
 *
 * @author wcm 2019/4/5 17:25
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = BootApplication.class)
public class ResourceRepositoryTest {

    @Autowired
    ResourceRepository resourceRepository;

    @Test
    public void find0Before() {

        LocalDateTime now = LocalDateTime.now();
        String timeStr = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").format(now);
        /**
         * 获取截止到当前时间内的所有图片内容
         */
        List<Resource> beforeResources = resourceRepository.find0Before(timeStr);
        System.out.println(beforeResources);
    }
}