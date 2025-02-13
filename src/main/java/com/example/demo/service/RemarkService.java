package com.example.demo.service;

import com.example.demo.model.Remark;
import java.util.List;

public interface RemarkService {
    Remark saveRemark(Remark remark);
    Remark getRemarkById(int id);
    List<Remark> getRemarksByUserId(int userId);
    List<Remark> getAllRemarks();
    void deleteRemark(int id);
}
