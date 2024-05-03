package com.example.rentapart.services;

import com.example.rentapart.models.Product;
import com.example.rentapart.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> listProducts(String title) {
        if(title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void save(Product product) {
        log.info("Saving new {}" + product);
        productRepository.save(product);
    }

    public  void delete(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductByID(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
