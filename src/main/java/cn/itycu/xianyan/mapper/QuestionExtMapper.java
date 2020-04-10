package cn.itycu.xianyan.mapper;

import cn.itycu.xianyan.modle.Question;
import cn.itycu.xianyan.dto.QuestionQueryDTO;

import java.util.List;

public interface QuestionExtMapper {
    int incView(Question record);
    int incCommentCount(Question record);
    List<Question> selectRelated(Question question);

    Integer countBySearch(QuestionQueryDTO questionQueryDTO);

    List<Question> selectBySearch(QuestionQueryDTO questionQueryDTO);
}