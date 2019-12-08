package com.nb.security.entity;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.apache.commons.lang3.StringUtils;

/**
 * <p>
 *     User
 * </p>
 *
 * @author 李浩洋
 * @since 2019-10-26
 */
@Data
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private String name;
    private String username;
    private String password;
    private String permissions;


    public boolean hasPermission(String method){
        boolean result = false;
        if(StringUtils.equalsIgnoreCase("get",method)){
            //如果是get请求，判断user的permissions是否有r
            result = StringUtils.contains(permissions,"r");
        }else {
            //是否有w权限
            result = StringUtils.contains(permissions,"w");
        }
        return result;
    }

}
