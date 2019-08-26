package com.armor.mblog.modules.data;

import com.armor.mblog.modules.entity.PostTag;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * @author wcm
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class PostTagVO extends PostTag implements Serializable {
    private static final long serialVersionUID = 73354108587481371L;

    private PostVO post;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public PostVO getPost() {
        return post;
    }
}
