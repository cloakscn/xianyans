package cn.itycu.xianyan.enums;

public enum NotificationTypeEnum {
    REPLY_QUESTION(1, "回复了问题"),
    REPLY_COMMENT(2, "回复了评论");

    private Integer type;

    private String name;

    public Integer getType() {
        return type;
    }


    public String getName() {
        return name;
    }

    NotificationTypeEnum(Integer type, String name) {
        this.type = type;
        this.name = name;
    }

    public static String nameOfType(Integer type) {
        for (NotificationTypeEnum notificationTypeEnum : NotificationTypeEnum.values()) {
            if (notificationTypeEnum.getType() == type) {
                return notificationTypeEnum.getName();
            }
        }
        return "";
    }
}
