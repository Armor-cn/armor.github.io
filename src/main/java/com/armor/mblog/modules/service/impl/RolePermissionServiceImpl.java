package com.armor.mblog.modules.service.impl;

import com.armor.mblog.modules.repository.PermissionRepository;
import com.armor.mblog.modules.repository.RolePermissionRepository;
import com.armor.mblog.modules.entity.Permission;
import com.armor.mblog.modules.entity.RolePermission;
import com.armor.mblog.modules.service.RolePermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Service
public class RolePermissionServiceImpl implements RolePermissionService {
    @Autowired
    private PermissionRepository permissionRepository;
    @Autowired
    private RolePermissionRepository rolePermissionRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Permission> findPermissions(long roleId) {
        List<RolePermission> rps = rolePermissionRepository.findAllByRoleId(roleId);

        List<Permission> rets = null;
        if (rps != null && rps.size() > 0) {
            Set<Long> pids = new HashSet<>();
            rps.forEach(rp -> pids.add(rp.getPermissionId()));
            rets = permissionRepository.findAllById(pids);
        }
        return rets;
    }

    @Override
    @Transactional
    public void deleteByRoleId(long roleId) {
        rolePermissionRepository.deleteByRoleId(roleId);
    }

    @Override
    @Transactional
    public void add(Set<RolePermission> rolePermissions) {
        rolePermissionRepository.saveAll(rolePermissions);
    }
}
