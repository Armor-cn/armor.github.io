
package com.armor.mblog.modules.service;

import com.armor.mblog.modules.data.UserVO;
import com.armor.mblog.modules.data.OpenOauthVO;
public interface OpenOauthService {
    //通过 oauth_token 查询 user
    UserVO getUserByOauthToken(String oauth_token);

    OpenOauthVO getOauthByToken(String oauth_token);
    
    OpenOauthVO getOauthByOauthUserId(String oauthUserId);

    OpenOauthVO getOauthByUid(long userId);

    boolean checkIsOriginalPassword(long userId);

    void saveOauthToken(OpenOauthVO oauth);

}
