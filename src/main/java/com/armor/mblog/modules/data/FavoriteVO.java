package com.armor.mblog.modules.data;

import com.armor.mblog.modules.entity.Favorite;

/**
 * @author wcm
 */
public class FavoriteVO extends Favorite {
    // extend
    private PostVO post;

    public PostVO getPost() {
        return post;
    }

    public void setPost(PostVO post) {
        this.post = post;
    }
}
