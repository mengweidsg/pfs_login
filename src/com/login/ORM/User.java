package com.login.ORM;

public class User {

private int id; //主键ID
private String name; //用户名
private String pwd; //密码

/*
10 * Getter 方法与Setter 方法 
11 */
 public String getName() {
    return name;
    }
    public void setName(String name) {
        this.name = name;
        }
    public String getPwd() {
        return pwd;
        }
    public void setPwd(String pwd) {
        this.pwd = pwd;
        }
    public int getId() {
        return id;
        }
    public void setId(int id) {
        this.id = id;
        }
    }
