package cn.itycu.xianyan;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.itycu.xianyan.mapper")
public class XianyanApplication {

    public static void main(String[] args) {
        SpringApplication.run(XianyanApplication.class, args);
    }

}
