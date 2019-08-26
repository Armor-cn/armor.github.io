package com.armor.mblog.modules.repository;

import com.armor.mblog.modules.entity.PostAttribute;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author  wcm
 */
public interface PostAttributeRepository extends JpaRepository<PostAttribute, Long>, JpaSpecificationExecutor<PostAttribute> {
}
