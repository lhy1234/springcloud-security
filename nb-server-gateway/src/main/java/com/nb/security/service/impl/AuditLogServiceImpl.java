package com.nb.security.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.nb.security.entity.AuditLog;
import com.nb.security.mapper.AuditLogMapper;
import com.nb.security.service.IAuditLogService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author 李浩洋
 * @since 2019-10-27
 */
@Service
public class AuditLogServiceImpl extends ServiceImpl<AuditLogMapper, AuditLog> implements IAuditLogService {

}
