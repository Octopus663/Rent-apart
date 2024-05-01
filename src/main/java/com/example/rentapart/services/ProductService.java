package com.example.rentapart.services;

import com.example.rentapart.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
private List<Product> products1 = new ArrayList<>();
private long ID = 0;
    {
        products1.add(new Product(++ID,"Квартира1", "Трьохкімнатна квартира",
                25000, "Київ" , "Святошинський", "Андрій"));
        products1.add(new Product(++ID,"Квартира2", "Двокімнатна квартира",
                23000, "Житомир" ,"Деснянський", "Володя"));
    }

    public List<Product> listProducts() {return products1; }

    public void save(Product product) {
        product.setId(++ID);
        products1.add(product);
    }

    public  void delete(Long id) {
        products1.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductByID(Long id) {
        for (Product product : products1) {
            if (product.getId().equals(id)) return product;
            {
            }
        }
        return null;
    }
}
