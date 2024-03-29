/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package com.armor.mblog.modules.repository;

import com.armor.mblog.modules.entity.SecurityCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface SecurityCodeRepository extends JpaRepository<SecurityCode, Long>, JpaSpecificationExecutor<SecurityCode> {
    SecurityCode findByKeyAndType(String key, int type);
    SecurityCode findByKey(String key);
}
