package com.me.control;


import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("demo2")
public class demo2
{

    @SuppressWarnings("unchecked")
    @RequestMapping("warting")
    public @ResponseBody
    Map warting()
    {
        Map out = new HashMap();
        try
        {
            // /业务逻辑
            Thread.sleep(5000);// 表示一个耗时的业务操作
        }
        catch (Exception e)
        {
            out.put("diverr",
                    "错误描述");
        }
        out.put("success", "处理成功");
        return out;
    }

}
