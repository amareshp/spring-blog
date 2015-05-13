package com.visitamaresh.ws.generic;

import java.util.List;

public interface GenericService<T> {
 
    void save(T pojo);
 
    List<T> findAll();
 
    void deleteById(Long id);
 
    T findById(Long id);
 
    void update(T pojo);
}