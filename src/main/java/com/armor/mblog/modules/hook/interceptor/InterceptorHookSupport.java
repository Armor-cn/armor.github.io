package com.armor.mblog.modules.hook.interceptor;

import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.PreDestroy;


public abstract class InterceptorHookSupport implements InterceptorHook {
    @Autowired
    protected InterceptorHookManager interceptorHookManager;

    @PreDestroy
    public void destroy() {
        interceptorHookManager.removeInterceptorHook(this);
    }
}
