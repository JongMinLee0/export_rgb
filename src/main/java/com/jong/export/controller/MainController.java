package com.jong.export.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/main")
    public String mainPage(){
        return "index";
    }

    @RequestMapping("/color")
    public String colorPage(){
        return "color";
    }

    @RequestMapping("/contact")
    public String contactPage(){
        return "contact";
    }

    @RequestMapping("/popUp")
    public String colorPopup(){
        return "colorPopup";
    }

}
