package com.imp.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author hdw on 2022/4/29 0:24
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Provider {
    private Integer id;
    private String providerName;
    private String providerContact;
    private String contactPhone;
    private String providerAddress;
}
