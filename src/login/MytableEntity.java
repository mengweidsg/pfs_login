package login;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.sql.Date;

/**
 * Created by mengwei on 2014/11/2.
 */
@Entity
@Table(name = "mytable", schema = "", catalog = "loginsystem")
public class MytableEntity {
    private String name;
    private String sex;
    private Date birth;
    private String birthaddr;

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "birth")
    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "birthaddr")
    public String getBirthaddr() {
        return birthaddr;
    }

    public void setBirthaddr(String birthaddr) {
        this.birthaddr = birthaddr;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MytableEntity that = (MytableEntity) o;

        if (birth != null ? !birth.equals(that.birth) : that.birth != null) return false;
        if (birthaddr != null ? !birthaddr.equals(that.birthaddr) : that.birthaddr != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (birth != null ? birth.hashCode() : 0);
        result = 31 * result + (birthaddr != null ? birthaddr.hashCode() : 0);
        return result;
    }
}
