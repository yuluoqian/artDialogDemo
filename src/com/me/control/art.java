package com.me.control;


import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("art")
public class art
{

    @RequestMapping("sub_page")
    public ModelAndView show_art(@RequestParam("username") String username,
                                 @RequestParam("nickname") String nickname)
    {
        ModelAndView mod = new ModelAndView();

        // get形式传递中文，需要转换
        String nickname2 = "";
        try
        {
            nickname2 = new String(nickname.getBytes("ISO-8859-1"), "UTF-8");
        }
        catch (UnsupportedEncodingException e)
        {
            e.printStackTrace();
        }

        System.out.println(username + ":" + nickname2);

        mod.addObject("username",
                      username);
        mod.addObject("nickname",
                      nickname2);

        mod.setViewName("sub_page");
        return mod;
    }


    // 返回结果可以是任意类型，内置的json转换类会帮我们进行转换
    // 直接返回String类型的时候有乱码问题，尚未测试如何解决。参考：http://www.oschina.net/code/snippet_103691_11482
    @SuppressWarnings("unchecked")
    @RequestMapping("post_test")
    public @ResponseBody
    Map post_test(@RequestParam("username") String username,
                  @RequestParam("nickname") String nickname,
                  @RequestParam("age") int age)
    {
        Map map = new HashMap();
        String out = "";
        out = username + ":" + nickname + ":" + age;
        map.put("result",
                out);
        return map;
    }

}
