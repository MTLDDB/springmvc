package action;


import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import pojo.Category;
import pojo.Product;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.List;


/*@Namespace("/")
@ParentPackage("struts-default")
@Results({@Result(name = "show", location = "/show.jsp"),
        @Result(name = "index", location = "/index.jsp"),
        @Result(name = "list", location = "/list.jsp")})*/
public class ProductAction extends ActionSupport {

    public ProductAction(){
        System.out.println("product action instance: " + this);
    }
    private String name;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    private Product product;
    private List<Product> products;
    private List<Integer> selectedProducts;
    private List<Category> categories =new ArrayList();
    private Date date;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }


    public List<Integer> getSelectedProducts() {
        return selectedProducts;
    }

    public void setSelectedProducts(List<Integer> selectedProducts) {
        this.selectedProducts = selectedProducts;
    }
    public List<Product> getProducts() {
        return products;
    }

   /* @Action("listProduct")*/
    public String list() {
        Category category1 =new Category();
        category1.setId(1);
        category1.setName("category1");

        Category category2 =new Category();
        category2.setId(2);
        category2.setName("category2");

        categories.add(category1);
        categories.add(category2);
        products=new ArrayList();
        selectedProducts = new ArrayList();
        Product p1 = new Product();
        p1.setId(1);
        p1.setName("product1");
        Product p2 = new Product();
        p2.setId(2);
        p2.setName("product2");
        Product p3 = new Product();
        p3.setId(3);
        p3.setName("product3");

        products.add(p1);
        products.add(p2);
        products.add(p3);

        List<Product> products1=new ArrayList();
        Product p11 = new Product();
        p11.setId(11);
        p11.setName("product11");
        Product p21 = new Product();
        p21.setId(21);
        p21.setName("product21");
        Product p31 = new Product();
        p31.setId(31);
        p31.setName("product31");

        products1.add(p11);
        products1.add(p21);
        products1.add(p31);

        List<Product> products2=new ArrayList();
        Product p4 = new Product();
        p4.setId(4);
        p4.setName("product4");
        Product p5 = new Product();
        p5.setId(5);
        p5.setName("product5");
        Product p6 = new Product();
        p6.setId(6);
        p6.setName("product6");

        products2.add(p4);
        products2.add(p5);
        products2.add(p6);

        category1.setProducts(products1);
        category2.setProducts(products2);
        selectedProducts.add(2);
        selectedProducts.add(3);
        return "list";
    }
    public void setProducts(List<Product> products) {
        this.products = products;
    }

   /* @Action("showProduct")*/
    public String show() {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();

        System.out.println("request:\t" + request.getSession());
        System.out.println("response:\t" + response.getStatus());
        product = new Product();
        product.setName("iphone7");
        return "show";
    }
    /*@Action("addProduct")*/
    public String add(){
        //Map m = ActionContext.getContext().getSession();
        //System.out.println("product.name:"+product.getName());
        //m.put("name",product.getName());
        return "show";
    }
   /* public void validate(){*//*validate为所有方法的验证方法*//*
        if ( product.getName().length() == 0 ){
            addFieldError( "product.name", "name can't be empty" );
        }
    }*/
    public void validateAdd(){/*validateAdd()为add()方法的专门验证方法*/
        if ( product.getName().length() == 0 ){
            addFieldError( "product.name", "name can't be empty" );
        }
    }
    public String addPage(){
        name = "default name";
        return "addPage";
    }
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


}
