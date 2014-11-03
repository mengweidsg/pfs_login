package tool;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class ExportDB {

/*
* 运行此类,通过POJO类和配置文件,生成数据库的表
*/
   public static void main(String args){
         Configuration cfg = new Configuration().configure();
         SchemaExport export = new SchemaExport(cfg);
         export.create(true, true);
         }
     }
