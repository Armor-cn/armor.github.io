package com.armor.mblog.modules.repository;

import com.armor.mblog.modules.entity.Favorite;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author wcm
 */
public interface FavoriteRepository extends JpaRepository<Favorite, Long>, JpaSpecificationExecutor<Favorite> {
    Favorite findByUserIdAndPostId(long userId, long postId);
    Page<Favorite> findAllByUserId(Pageable pageable, long userId);
    int deleteByPostId(long postId);
}
