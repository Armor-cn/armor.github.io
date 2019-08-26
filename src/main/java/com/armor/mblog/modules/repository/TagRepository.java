package com.armor.mblog.modules.repository;

import com.armor.mblog.modules.entity.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
@Repository
public interface TagRepository extends JpaRepository<Tag, Long>, JpaSpecificationExecutor<Tag> {
    Tag findByName(String name);
}
