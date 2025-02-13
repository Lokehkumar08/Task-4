package com.example.demo.service;

import com.example.demo.model.Remark;
import com.example.demo.repository.RemarkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class RemarkServiceImpl implements RemarkService {
    
    @Autowired
    private RemarkRepository remarkRepository;
    
    @Override
    public Remark saveRemark(Remark remark) {
        return remarkRepository.save(remark);
    }
    
    @Override
    public Remark getRemarkById(int id) {
        return remarkRepository.findById(id).orElse(null);
    }
    
    @Override
    public List<Remark> getRemarksByUserId(int userId) {
        return remarkRepository.findByUserUserId(userId);
    }
    
    @Override
    public List<Remark> getAllRemarks() {
        return remarkRepository.findAll();
    }
    
    @Override
    public void deleteRemark(int id) {
        remarkRepository.deleteById(id);
    }
}


