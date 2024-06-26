package com.example.rentapart.repositories;

import com.example.rentapart.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    boolean existsById(Long id);
    List<Product> findByTitle(String title);
}
