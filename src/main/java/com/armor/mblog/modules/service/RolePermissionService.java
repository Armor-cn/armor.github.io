package com.armor.mblog.modules.service;

import com.armor.mblog.modules.entity.Permission;
import com.armor.mblog.modules.entity.RolePermission;

import java.util.List;
import java.util.Set;

public interface RolePermissionService {
    List<Permission> findPermissions(long roleId);
    void deleteByRoleId(long roleId);
    void add(Set<RolePermission> rolePermissions);

}
