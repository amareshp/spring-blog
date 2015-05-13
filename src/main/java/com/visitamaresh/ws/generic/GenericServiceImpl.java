package com.visitamaresh.ws.generic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service("genericService")
@Transactional
public class GenericServiceImpl<T> implements GenericService<T> {
 
    @Autowired
    private IGenericDao dao;
     
    public void save(T pojo) {
        dao.save(pojo);
    }
 
    public List<T> findAll() {
        return dao.findAll();
    }
 
    public void deleteById(Long id) {
        dao.deleteById(id);
    }
 
    public T findById(Long id) {
        return (T)dao.findById(id);
    }
 
    public void update(T pojo){
        dao.update(pojo);
    }
}