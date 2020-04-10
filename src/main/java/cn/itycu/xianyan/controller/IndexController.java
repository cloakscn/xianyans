package cn.itycu.xianyan.controller;

import cn.itycu.xianyan.service.QuestionService;
import cn.itycu.xianyan.dto.PaginationDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private QuestionService questionService;

    @RequestMapping("/")
    public String index(Model model,
                        @RequestParam(name = "page", defaultValue = "1") Integer page,
                        @RequestParam(name = "search", required = false) String search,
                        @RequestParam(name = "size", defaultValue = "10") Integer size){

        PaginationDTO pagination = questionService.list(search, page, size);
        PaginationDTO paginationByStick = questionService.listByIsStick(page, size);
        model.addAttribute("pagination", pagination);
        model.addAttribute("paginationByStick", paginationByStick);
        model.addAttribute("search", search);

        return "index";
    }
}