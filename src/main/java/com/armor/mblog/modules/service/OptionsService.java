
package com.armor.mblog.modules.service;

import com.armor.mblog.modules.entity.Options;
import org.springframework.core.io.Resource;

import java.util.List;
import java.util.Map;

public interface OptionsService {
	/**
	 * 查询所有配置
	 * @return list
	 */
	List<Options> findAll();

	/**
	 * 添加或修改配置
	 * - 修改时根据key判断唯一性
	 * @param options
	 */
	void update(Map<String, String> options);

	void initSettings(Resource resource);
}
