package cn.forward.common.base;

import java.util.Date;

/**
 * @author Forward
 * @version 2018-01-19
 */
public class BaseEntity {
    /**
     * id
     * */
    private String id;
    /**
     * 创建时间
     * */
    private Date gmtCreate;
    /**
     * 最近更新时间
     * */
    private Date gmtModified;
    /**
     * 删除状态
     * 0 表示未删除 1 表示已删除
     * */
    private String delFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }
}
