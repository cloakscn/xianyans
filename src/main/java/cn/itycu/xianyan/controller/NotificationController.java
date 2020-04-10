package cn.itycu.xianyan.controller;

import cn.itycu.xianyan.enums.NotificationTypeEnum;
import cn.itycu.xianyan.modle.User;
import cn.itycu.xianyan.service.NotificationService;
import cn.itycu.xianyan.dto.NotificationDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;

@Controller
public class NotificationController {

    @Autowired
    private NotificationService notificationService;

    @GetMapping("/notification/{id}")
    public String profile(HttpServletRequest request,
                          @PathVariable(name = "id") Long id) {

        //分页
        User user = (User) request.getSession().getAttribute("user");

        if (user == null) {
            return "redirect:index";
        }

        NotificationDTO notificationDTO = notificationService.read(id, user);
        if (NotificationTypeEnum.REPLY_COMMENT.getType() == notificationDTO.getType()
                || NotificationTypeEnum.REPLY_QUESTION.getType() == notificationDTO.getType()) {
            return "redirect:/question/" + notificationDTO.getQuestionId();
        } else {
            return "redirect:index";
        }
    }
}
