package cn.itycu.xianyan.exception;

public class CustomizeException extends RuntimeException {

    private String message;
    private Integer code;

    public CustomizeException(CustomizeErrorCodeIf errorCodeIf) {
        this.code = errorCodeIf.getCode();
        this.message = errorCodeIf.getMessage();
    }

    @Override
    public String getMessage() {
        return message;
    }

    public Integer getCode() {
        return code;
    }
}
