package com.nb.security.mapper;

import com.nb.security.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author 李浩洋
 * @since 2019-10-26
 */
@Repository
public interface UserMapper extends BaseMapper<User> {



    List<User> findByUsername(@Param("username") String username);
}
