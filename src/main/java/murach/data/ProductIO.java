package murach.data;

import java.util.HashMap;
import java.util.Map;
import murach.business.Product;

public class ProductIO {

    private static final Map<String, Product> products = new HashMap<>();

    static {
        Product p1 = new Product("java", "Murach's Java Programming", 57.50);
        Product p2 = new Product("jsp", "Murach's Java Servlets and JSP", 54.50);
        Product p3 = new Product("servlet", "Murach's Java Servlets and JSP (3rd Edition)", 59.50);

        products.put(p1.getCode(), p1);
        products.put(p2.getCode(), p2);
        products.put(p3.getCode(), p3);
    }

    public static Product getProduct(String productCode) {
        if (productCode == null) {
            return null;
        }
        return products.get(productCode.toLowerCase());
    }
}
