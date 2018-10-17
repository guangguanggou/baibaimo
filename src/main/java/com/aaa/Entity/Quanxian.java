package com.aaa.Entity;

import java.io.Serializable;

/**
 * @ClassName Quanxian
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/11 8:16
 * @Version 1.0
 **/
public class Quanxian implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer aid;
    private String anum;
    private String aname;
    private String beizhu;
    private Integer roleid;
    private String rolename;
    private String roledesc;
    private String img;
    private Integer treeid;
    private String treename;
    private String treeurl;
    private String treeimg;
    private String beizhu2;
    private Integer tree;

    public Quanxian() {
        super();
    }

    public String getBeizhu2() {
        return beizhu2;
    }

    public void setBeizhu2(String beizhu2) {
        this.beizhu2 = beizhu2;
    }

    @Override
    public String toString() {
        return "Quanxian{" +
                "aid=" + aid +
                ", anum='" + anum + '\'' +
                ", aname='" + aname + '\'' +
                ", beizhu='" + beizhu + '\'' +
                ", roleid=" + roleid +
                ", rolename='" + rolename + '\'' +
                ", roledesc='" + roledesc + '\'' +
                ", img='" + img + '\'' +
                ", treeid=" + treeid +
                ", treename='" + treename + '\'' +
                ", treeurl='" + treeurl + '\'' +
                ", treeimg='" + treeimg + '\'' +
                ", beizhu2='" + beizhu2 + '\'' +
                ", tree=" + tree +
                '}';
    }

    public Quanxian(Integer aid, String anum, String aname, String beizhu, Integer roleid, String rolename, String roledesc, String img, Integer treeid, String treename, String treeurl, String treeimg, String beizhu2, Integer tree) {
        this.aid = aid;
        this.anum = anum;
        this.aname = aname;
        this.beizhu = beizhu;
        this.roleid = roleid;
        this.rolename = rolename;
        this.roledesc = roledesc;
        this.img = img;
        this.treeid = treeid;
        this.treename = treename;
        this.treeurl = treeurl;
        this.treeimg = treeimg;
        this.beizhu2 = beizhu2;
        this.tree = tree;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAnum() {
        return anum;
    }

    public void setAnum(String anum) {
        this.anum = anum;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getRoledesc() {
        return roledesc;
    }

    public void setRoledesc(String roledesc) {
        this.roledesc = roledesc;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getTreeid() {
        return treeid;
    }

    public void setTreeid(Integer treeid) {
        this.treeid = treeid;
    }

    public String getTreename() {
        return treename;
    }

    public void setTreename(String treename) {
        this.treename = treename;
    }

    public String getTreeurl() {
        return treeurl;
    }

    public void setTreeurl(String treeurl) {
        this.treeurl = treeurl;
    }

    public String getTreeimg() {
        return treeimg;
    }

    public void setTreeimg(String treeimg) {
        this.treeimg = treeimg;
    }

    public Integer getTree() {
        return tree;
    }

    public void setTree(Integer tree) {
        this.tree = tree;
    }
}
