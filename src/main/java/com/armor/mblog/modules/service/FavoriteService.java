package com.armor.mblog.modules.service;

import com.armor.mblog.modules.data.FavoriteVO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * 收藏记录
 * @author wcm
 */
public interface FavoriteService {
    /**
     * 查询用户收藏记录
     * @param pageable
     * @param userId
     * @return
     */
    Page<FavoriteVO> pagingByUserId(Pageable pageable, long userId);

    void add(long userId, long postId);
    void delete(long userId, long postId);
    void deleteByPostId(long postId);
}
