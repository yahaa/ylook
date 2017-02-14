package com.zihua.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by zihua on 16-12-29.
 * title,detail 为必填字段
 */
@Entity
@Table
public class Info {
    private int id;
    private User author;
    private String title;
    private String tpye;
    private int visits;
    private boolean solve = false;
    private String details;
    private Date published = new Date();


    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "username", referencedColumnName = "username")
    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    @Column(name = "title", nullable = false)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTpye() {
        return tpye;
    }

    public void setTpye(String tpye) {
        this.tpye = tpye;
    }

    public int getVisits() {
        return visits;
    }

    public void setVisits(int visits) {
        this.visits = visits;
    }

    public boolean isSolve() {
        return solve;
    }

    public void setSolve(boolean solve) {
        this.solve = solve;
    }

    @Column(name = "details", nullable = false)
    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "pubTime", updatable = false, nullable = false)
    public Date getPublished() {
        return published;
    }

    public void setPublished(Date published) {
        this.published = published;
    }


}
