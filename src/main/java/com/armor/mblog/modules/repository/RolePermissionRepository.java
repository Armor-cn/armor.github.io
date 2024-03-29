package com.armor.mblog.modules.repository;

import com.armor.mblog.modules.entity.RolePermission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * @author  wcm
 */
public interface RolePermissionRepository extends JpaRepository<RolePermission, Long>, JpaSpecificationExecutor<RolePermission> {
    int deleteByRoleId(long roleId);
    List<RolePermission> findAllByRoleId(long roleId);
}
