package com.aaa.Entity;

/**
 * @ClassName Quanxian
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/11 8:16
 * @Version 1.0
 **/
public class Quanxian {
    private Integer aid;
    private String anum;
    private String aname;
    private Integer roleid;
    private String rolename;
    private String roledesc;
    private String img;
    private Integer treeid;
    private String treename;
    private String treeurl;
    private String treeimg;
    private Integer tree;

    public Quanxian() {
        super();
    }

    public Quanxian(Integer aid, String anum, String aname, Integer roleid, String rolename, String roledesc, String img, Integer treeid, String treename, String treeurl, String treeimg, Integer tree) {
        this.aid = aid;
        this.anum = anum;
        this.aname = aname;
        this.roleid = roleid;
        this.rolename = rolename;
        this.roledesc = roledesc;
        this.img = img;
        this.treeid = treeid;
        this.treename = treename;
        this.treeurl = treeurl;
        this.treeimg = treeimg;
        this.tree = tree;
    }

    @Override
    public String toString() {
        return "Quanxian{" +
                "aid=" + aid +
                ", anum='" + anum + '\'' +
                ", aname='" + aname + '\'' +
                ", roleid=" + roleid +
                ", rolename='" + rolename + '\'' +
                ", roledesc='" + roledesc + '\'' +
                ", img='" + img + '\'' +
                ", treeid=" + treeid +
                ", treename='" + treename + '\'' +
                ", treeurl='" + treeurl + '\'' +
                ", treeimg='" + treeimg + '\'' +
                ", tree=" + tree +
                '}';
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
