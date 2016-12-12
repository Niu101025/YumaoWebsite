package com.niu.yumao.action;

import com.niu.yumao.domain.Info;
import com.niu.yumao.domain.Product;
import com.niu.yumao.service.CategoryService;
import com.niu.yumao.service.InfoService;
import com.niu.yumao.service.ProductService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by niuhongbin on 16/12/12.
 * 首页的Action,加载前台的相关信息
 */
public class IndexAction extends ActionSupport {

    private CategoryService categoryService;
    private InfoService infoService;
    private ProductService productService;

    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    public void setInfoService(InfoService infoService) {
        this.infoService = infoService;
    }

    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    public String findAll(){
        try {
            List<Product> hotProduct = productService.findAllHotProduct();
            ActionContext.getContext().getValueStack().push(hotProduct);
            Info info = infoService.findInfo();
            ActionContext.getContext().getValueStack().push(info);
            return "findAllSuccess";
        }catch (Exception e){
            return "findAllError";
        }


    }
}
