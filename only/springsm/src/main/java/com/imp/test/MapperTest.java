package com.imp.test;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.imp.bean.Group;
import com.imp.bean.Product;
import com.imp.bean.Provider;
import com.imp.dao.ProductMapper;
import com.imp.service.ProductService;
import com.imp.service.ProviderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;


/**
 * @author hdw on 2022/4/24 22:29
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class MapperTest {
    @Autowired
    private ProductMapper productMapper;

    @Test
    public void testProductMapper() {
        System.out.println("xxx");
        System.out.println(productMapper);

        List<Product> products = productMapper.getAllProducts();
        for (Product product : products) {
            System.out.println(product);
        }

        System.out.println("Auto Compile... ...");
        System.out.println("Auto Compile... ...Success");
    }

    @Autowired
    private ProductService productService;

    @Test
    public void getAllProducts() {
        PageHelper.startPage(1, 5);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Product> products = productService.getAllProducts();
        // 使用PageInfo包装查询后的结果, 只需要将PageInfo交给页面就行了(param2:表示分页条显示的页数)
        PageInfo<Product> pageInfo = new PageInfo<>(products, 5);

        for (Product product : products) {
            System.out.println(product);
        }
        System.out.println("总页数："+pageInfo.getPages() + "总条数："+pageInfo.getTotal());
    }


}
