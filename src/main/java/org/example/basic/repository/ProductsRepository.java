package org.example.basic.repository;

import java.util.List;
import java.util.Optional;

public interface ProductsRepository {
    Optional<List<String>> getProductsName(String name);
}