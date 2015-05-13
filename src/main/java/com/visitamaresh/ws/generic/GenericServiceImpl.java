package com.visitamaresh.ws.generic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service("genericService")
@Transactional
public class GenericServiceImpl implements GenericService<GenericPojo> {
 
    @Autowired
    private IGenericDao dao;
     
    public void save(GenericPojo pojo) {
        dao.save(pojo);
    }
 
    public List<GenericPojo> findAll() {
        return dao.findAll();
    }
 
    public void deleteById(Long id) {
        dao.deleteById(id);
    }
 
    public GenericPojo findById(Long id) {
        return (GenericPojo)dao.findById(id);
    }
 
    public void update(GenericPojo pojo){
        dao.update(pojo);
    }
}