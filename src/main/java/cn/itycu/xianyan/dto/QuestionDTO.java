package cn.itycu.xianyan.dto;

import cn.itycu.xianyan.modle.User;
import lombok.Data;

/**
 * 数据传输层
 */

@Data
public class QuestionDTO {

    private Long id;
    private String title;
    private String description;
    private Long gmtCreate;
    private Long gmtModified;
    private String tag;
    private Long creator;
    private Integer viewCount;
    private Integer commentCount;
    private Integer likeCount;
    private User user;
}
