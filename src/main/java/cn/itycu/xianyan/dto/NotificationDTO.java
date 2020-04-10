package cn.itycu.xianyan.dto;

import lombok.Data;

@Data
public class NotificationDTO {
    private Long id;
    private Long gmtCreate;
    private Integer status;
    private Long notifier;
    private String notifierName;
    private String outerTitle;
    private Long orterId;
    private String typeName;
    private Integer type;
    private Long questionId;
}
