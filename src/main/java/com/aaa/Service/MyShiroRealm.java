package com.aaa.Service;


import java.util.*;

import com.aaa.Dao.LoginDao;
import com.aaa.Util.ShiroToken;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

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
            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
            //}
            Set<String> list = loginService.getRole(loginName);
            info.setStringPermissions(list);
            return info;
	}

	/**
	 * ��֤����
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken arg0) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken token = (UsernamePasswordToken) arg0;

		Map map=new HashMap();
		map.put("userNum",token.getUsername());
		System.out.println(token);
		System.out.println(token.getPassword());
		map.put("passWord","aaa");



		Map user=loginService.getUser(map);

        if(user!=null){
            return new SimpleAuthenticationInfo(user,user.get("apass"),getName());
        }else{
            return null;
        }
	}

	
}
