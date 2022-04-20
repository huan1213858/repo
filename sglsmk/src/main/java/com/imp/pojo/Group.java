package com.imp.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;

/**
 * @author hdw on 2022/4/25 1:19
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Group {
    private Integer id;
    private String groupName;

    // 新增属性, 一个商品类别下有很多商品
    private List<Product> products;
}
