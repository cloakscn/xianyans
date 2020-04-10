package cn.itycu.xianyan.controller;

import cn.itycu.xianyan.dto.CommentDTO;
import cn.itycu.xianyan.dto.QuestionDTO;
import cn.itycu.xianyan.enums.CommentTypeEnum;
import cn.itycu.xianyan.service.CommentService;
import cn.itycu.xianyan.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private CommentService commentService;

    @GetMapping("/question/{id}")
    public String question(Model model,
                           @PathVariable(name = "id") Long id) {
        QuestionDTO questionDTO = questionService.getById(id);

        List<QuestionDTO> relatedQuestions = questionService.selectRelated(questionDTO);
        //获取评论
        List<CommentDTO> comments = commentService.listByTargetId(id, CommentTypeEnum.QUESTION);
        //累加浏览量
        questionService.icnView(id);
        model.addAttribute("question", questionDTO);
        model.addAttribute("comments", comments);
        model.addAttribute("relatedQuestions", relatedQuestions);
        return "question";
    }
}
