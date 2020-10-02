package com.bybbs.domain;


import java.sql.Timestamp;


public class User {

    private Integer user_id;
    private String user_pswd;
    private String user_name;
    private String user_email;
    private String user_status_code;
    private Integer user_status;
    private String user_phone;
    private String user_ex;
    private Integer user_sex;
    private String user_blog;
    private String user_nickname;
    private String user_img;
    private Integer user_show_num;
    private Integer user_fans_num;
    private Integer user_concern_num;
    private String user_birthday;
    private Timestamp user_register_time;
    private Timestamp user_login_time;

    public Timestamp getUser_register_time() {
        return user_register_time;
    }

    public void setUser_register_time(Timestamp user_register_time) {
        this.user_register_time = user_register_time;
    }

    public Timestamp getUser_login_time() {
        return user_login_time;
    }

    public void setUser_login_time(Timestamp user_login_time) {
        this.user_login_time = user_login_time;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_pswd() {
        return user_pswd;
    }

    public void setUser_pswd(String user_pswd) {
        this.user_pswd = user_pswd;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_status_code() {
        return user_status_code;
    }

    public void setUser_status_code(String user_status_code) {
        this.user_status_code = user_status_code;
    }

    public Integer getUser_status() {
        return user_status;
    }

    public void setUser_status(Integer user_status) {
        this.user_status = user_status;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_ex() {
        return user_ex;
    }

    public void setUser_ex(String user_ex) {
        this.user_ex = user_ex;
    }

    public Integer getUser_sex() {
        return user_sex;
    }

    public void setUser_sex(Integer user_sex) {
        this.user_sex = user_sex;
    }

    public String getUser_blog() {
        return user_blog;
    }

    public void setUser_blog(String user_blog) {
        this.user_blog = user_blog;
    }

    public String getUser_nickname() {
        return user_nickname;
    }

    public void setUser_nickname(String user_nickname) {
        this.user_nickname = user_nickname;
    }

    public String getUser_img() {
        return user_img;
    }

    public void setUser_img(String user_img) {
        this.user_img = user_img;
    }

    public Integer getUser_show_num() {
        return user_show_num;
    }

    public void setUser_show_num(Integer user_show_num) {
        this.user_show_num = user_show_num;
    }

    public Integer getUser_fans_num() {
        return user_fans_num;
    }

    public void setUser_fans_num(Integer user_fans_num) {
        this.user_fans_num = user_fans_num;
    }

    public Integer getUser_concern_num() {
        return user_concern_num;
    }

    public void setUser_concern_num(Integer user_concern_num) {
        this.user_concern_num = user_concern_num;
    }

    public String getUser_birthday() {
        return user_birthday;
    }

    public void setUser_birthday(String user_birthday) {
        this.user_birthday = user_birthday;
    }



    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_pswd='" + user_pswd + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_email='" + user_email + '\'' +
                ", user_status_code='" + user_status_code + '\'' +
                ", user_status=" + user_status +
                ", user_phone='" + user_phone + '\'' +
                ", user_ex='" + user_ex + '\'' +
                ", user_sex=" + user_sex +
                ", user_blog='" + user_blog + '\'' +
                ", user_nickname='" + user_nickname + '\'' +
                ", user_img='" + user_img + '\'' +
                ", user_show_num=" + user_show_num +
                ", user_fans_num=" + user_fans_num +
                ", user_concern_num=" + user_concern_num +
                ", user_birthday='" + user_birthday + '\'' +
                ", user_register_time=" + user_register_time +
                ", user_login_time=" + user_login_time +
                '}';
    }
}