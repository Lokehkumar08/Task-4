package com.example.demo.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "remarks")
public class Remark {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int remark_id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(columnDefinition = "TEXT")
    private String user_remark;

    private LocalDateTime remark_date;

    // Auto-set remark_date before persisting if not provided
    @PrePersist
    public void prePersist() {
        if (remark_date == null) {
            remark_date = LocalDateTime.now();
        }
    }

    // Getters and Setters
    public int getRemark_id() {
        return remark_id;
    }

    public void setRemark_id(int remark_id) {
        this.remark_id = remark_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUser_remark() {
        return user_remark;
    }

    public void setUser_remark(String user_remark) {
        this.user_remark = user_remark;
    }

    public LocalDateTime getRemark_date() {
        return remark_date;
    }

    public void setRemark_date(LocalDateTime remark_date) {
        this.remark_date = remark_date;
    }
}
