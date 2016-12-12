package com.niu.yumao.action;

import com.niu.yumao.domain.Category;
import com.niu.yumao.domain.PageBean;
import com.niu.yumao.domain.Product;
import com.niu.yumao.service.CategoryService;
import com.niu.yumao.service.ProductService;
import com.niu.yumao.utils.StrUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ProductAction extends ActionSupport implements ModelDriven<Product> {

    private Product product = new Product();

    @Override
    public Product getModel() {
        // TODO Auto-generated method stub
        return product;
    }

    private ProductService productService;

    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    private CategoryService categoryService;

    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    // myFile属性用来封装上传的文件
    private File myFile;

    // myFileContentType属性用来封装上传文件的类型
    private String myFileContentType;

    // myFileFileName属性用来封装上传文件的文件名
    private String myFileFileName;

    public File getMyFile() {
        return myFile;
    }

    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }

    public String getMyFileContentType() {
        return myFileContentType;
    }

    public void setMyFileContentType(String myFileContentType) {
        this.myFileContentType = myFileContentType;
    }

    public String getMyFileFileName() {
        return myFileFileName;
    }

    public void setMyFileFileName(String myFileFileName) {
        this.myFileFileName = myFileFileName;
    }


    /**
     * 添加产品
     *
     * @return
     */
    public String add() {

        setImg();
        product.setPtime(new Date());
        productService.add(product);
        return "saveProductSuccess";
    }

    public void setImg() {
        try {
            File toFile = null;
            if (StrUtils.isNotBlank(myFileFileName) && myFile != null) {
                // 基于myFile创建一个文件输入流
                InputStream is = new FileInputStream(myFile);
                // 设置上传文件目录
                String uploadPath = ServletActionContext.getServletContext().getRealPath("/upload");
                File file = new File(uploadPath);
                if (!file.exists()) {
                    file.mkdirs();
                }
                // 设置目标文件
                Date date = new Date();
                DateFormat format = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
                String time = format.format(date);
                toFile = new File(uploadPath, time + "_" + this.getMyFileFileName());
                // 创建一个输出流
                OutputStream os = null;
                // 设置缓存
                byte[] buffer = new byte[1024];
                int length = 0;
                os = new FileOutputStream(toFile);
                while ((length = is.read(buffer)) > 0) {
                    os.write(buffer, 0, length);
                }
                is.close();
                // 关闭输出流
                os.close();
                if (toFile != null) {
                    product.setPimg("/upload/" + toFile.getName());
                }
            }
        } catch (Exception e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();

        }
    }

    private Integer currPage = 1;

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public String findAllProduct() {
        PageBean<Product> pageBean = productService.findByPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAllProductSuccess";
    }

    public String findAll() {
        PageBean<Product> pageBean = productService.findByPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAllSuccess";
    }

    public String edit() {
        List<Category> categories = categoryService.findAllCategory();
        PageBean<Category> pageBean = new PageBean<Category>();
        pageBean.setList(categories);
        ActionContext.getContext().getValueStack().push(pageBean);
        Product mProduct = productService.findById(product.getPid());
        ActionContext.getContext().getValueStack().push(mProduct);
        return "editProductSuccess";
    }


    public String save() {
        setImg();
        productService.save(product);
        return "saveSuccess";
    }

    public String delete() {
        productService.deleteProduct(product);
        return "deleteSuccess";
    }
}
