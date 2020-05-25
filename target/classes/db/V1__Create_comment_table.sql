CREATE TABLE `xianyan`.`comments`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NULL COMMENT '父类id',
  `content` varchar (255) NULL COMMENT '父类类型',
  `type` int(10) NULL COMMENT '父类类型',
  `commentator` int(50) NULL COMMENT '评论人id',
  `like_count` bigint(0) NULL COMMENT '点赞数',
  `gmt_create` bigint(0) NULL COMMENT '创建时间',
  `gmt_modified` bigint(0) NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
);