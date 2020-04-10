package cn.itycu.xianyan.exception;

public enum CustomizeErrorCode implements CustomizeErrorCodeIf {

    QUESTION_NOT_FOUND(2001,"你找的问题不存在，要不换一个试试?"),
    TARGET_PARAM_NOT_FOUND(2002,"未选中任何问题或评论?"),
    NO_LOGIN(2003,"请重新"),
    SYS_ERROR(2004, "东京有点热，要不回国吧！！"),
    TYPE_PARAM_WRONG(2005, "评论类型错误或不存在"),
    COMMENT_NOT_FOUND(2006, "评论不存在，要不换一个试试"),
    CONTENT_IS_EMPTY(2007, "评论不能为空"),
    READ_NOTIFICATION_FAIL(2008, "兄弟都别人的信息可是不道德滴！！"),
    NOTIFICATION_NOT_FOUND(2009, "消息莫非不翼而飞了！！"),
    ;

    private String message;
    private Integer code;

    CustomizeErrorCode(String message) {
        this.message = message;
    }

    CustomizeErrorCode(Integer code, String message) {
        this.message = message;
        this.code = code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public Integer getCode() {
        return code;
    }
}
