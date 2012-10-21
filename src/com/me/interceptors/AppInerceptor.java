package com.me.interceptors;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.nutz.dao.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


@Component
public class AppInerceptor implements HandlerInterceptor
{

    // 返回视图后执行
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response,
                                Object handler,
                                Exception ex)
                                             throws Exception
    {

    }


    // 控制器执行完，返回视图前执行
    @SuppressWarnings("unchecked")
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response,
                           Object handler,
                           ModelAndView mod)
                                            throws Exception
    {

    }


    // 进入控制器之前执行
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler)
                                            throws Exception
    {

        // 下面检查权限，如果没有登录session，则跳转到登录页面
        // HttpSession sesion = request.getSession();
        // System.out.println("Sessoion:" + sesion.getAttribute("curUser") +
        // ":"+ WebPath.getCurPage(request));
        // if (StringUT.isEmpty(sesion.getAttribute("curUser")))
        // {
        // // 如果当前请求来自登陆页面，没有session当然是正常的
        // String cur = request.getServletPath();
        //            
        // // 没有session，而且还不存在于排除页面就跳转到登陆页
        // if (!WebPath.inPassUrl(cur) && !(
        // cur.contains( "/CCPP/cppLogon.do" ) ||
        // cur.contains( "/CCPP/postZipFile.do" ) ||
        // cur.contains( "/CCPP/getComInfo.do" )||
        // cur.contains( "/CCPP/urf.do" )))
        // {
        // response.sendRedirect(WebPath.SYS_PATH);
        // return false;
        // }
        // }

        // Pager.DEFAULT_PAGE_SIZE = 20;

        // 设置浏览器发送过来的数据
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("content-type",
                             "text/html;charset=UTF-8");
        
        // 设置浏览器解释时候的编码
//        response.setCharacterEncoding("UTF-8");

        return true;
    }
}
