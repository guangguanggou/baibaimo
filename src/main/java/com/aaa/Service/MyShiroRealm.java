package com.aaa.Service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.aaa.Dao.LoginDao;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *@className:MyShiroRealm.java
 *@discription:
 *@author:zhz
 *@createTime:2018-3-17����4:59:19
 *@version:1.0.0
 **/
public  class MyShiroRealm extends AuthorizingRealm {
    @Autowired
    private LoginService loginService;
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
        String loginName=(String) arg0.fromRealm(getName()).iterator().next();
        if(loginName!=null){
            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
            //}
            return info;    
        }    
        return null;    
	}

	/**
	 * ��֤����
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken arg0) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken token = (UsernamePasswordToken) arg0;
        List<Map> list = loginService.getAdmin2(token.getUsername());
        if(token.getUsername().equals(list.get(0).get("anum"))){
            return new SimpleAuthenticationInfo(list.get(0).get("anum"),list.get(0).get("apass"), getName());
        }else{
            return null;
        }
	}

	
}
