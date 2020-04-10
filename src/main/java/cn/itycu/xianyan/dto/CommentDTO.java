package cn.itycu.xianyan.dto;

import cn.itycu.xianyan.modle.User;
import lombok.Data;

@Data
public class CommentDTO {
    private Long id;
    private Long parentId;
    private String content;
    private Integer type;
    private Long commentator;
    private Integer commentCount;
    private Long likeCount;
    private Long gmtCreate;
    private Long gmtModified;
    private User user;
}
