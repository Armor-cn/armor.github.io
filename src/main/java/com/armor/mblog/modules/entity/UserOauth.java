package com.armor.mblog.modules.entity;

import javax.persistence.*;

/**
 * @author wcm
 * Message: 第三方开发授权登录
 */
@Entity
@Table(name = "mto_user_oauth")
public class UserOauth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 系统中的用户ID
     */
    @Column(name = "user_id")
    private long userId;

    /**
     * 认证类型：QQ、新浪
     */
    @Column(name = "oauth_type")
    private int oauthType;

    /**
     * 对应第三方用户ID
     */
    @Column(name = "oauth_user_id", length = 128)
    private String oauthUserId;

    /**
     * 第三方返回的code
     */
    @Column(name = "oauth_code", length = 128)
    private String oauthCode;

    /**
     * 访问令牌
     */
    @Column(name = "access_token", length = 128)
    private String accessToken;

    @Column(name = "expire_in", length = 128)
    private String expireIn;

    @Column(name = "refresh_token", length = 128)
    private String refreshToken;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public int getOauthType() {
        return oauthType;
    }

    public void setOauthType(int oauthType) {
        this.oauthType = oauthType;
    }

    public String getOauthUserId() {
        return oauthUserId;
    }

    public void setOauthUserId(String oauthUserId) {
        this.oauthUserId = oauthUserId;
    }

    public String getOauthCode() {
        return oauthCode;
    }

    public void setOauthCode(String oauthCode) {
        this.oauthCode = oauthCode;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getExpireIn() {
        return expireIn;
    }

    public void setExpireIn(String expireIn) {
        this.expireIn = expireIn;
    }

    public String getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
}
