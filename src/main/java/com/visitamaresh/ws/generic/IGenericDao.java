package com.visitamaresh.ws.generic;

import java.io.Serializable;
import java.util.List;

public interface IGenericDao<T> {
    
    T findById(final long id);
  
    List<T> findAll();
  
    void save(final T entity);
  
    T update(final T entity);
  
    void delete(final T entity);
  
    void deleteById(final long entityId);
 }