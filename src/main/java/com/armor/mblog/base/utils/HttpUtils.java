package com.armor.mblog.base.utils;
import com.armor.mblog.base.lang.ArmorException;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;

import java.io.IOException;
import java.util.Map;

/**
 * @author wcm
 */
public class HttpUtils {

	private static HttpClient getClient() {
		HttpClient client = new HttpClient();
		client.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "utf-8"); 
		return client;
	}
	
	public static String post(String url, Map<String, String> params) throws IOException {
		HttpClient client = getClient();
		
    	PostMethod post = new PostMethod(url);
    	
    	for (Map.Entry<String, String> p : params.entrySet()) {
    		post.addParameter(p.getKey(), p.getValue());
    	}
    	
    	int status = client.executeMethod(post);

    	if (status != HttpStatus.SC_OK) {
    		throw new ArmorException("该地址请求失败");
    	}
    	return post.getResponseBodyAsString();
	}
}
