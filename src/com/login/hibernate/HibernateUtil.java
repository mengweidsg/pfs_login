package com.login.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    //声明Hibernate配置文件所在的路径
    private static String configFile = "/hibernate.cfg.xml";
    //建Configuration对象
    private static Configuration configuration = new Configuration();
    //建Session工厂对象
    private static SessionFactory sessionFactory = null;

     /**
     18 * 单例模式,只初始化一次,只产生一个SessionFactory对象(线程安全)
     19 */
     static {
        try{
            //通过 hibernate.cfg.xml 配置数据库连接
            configuration.configure(configFile);
            //建立一个Session工厂
            sessionFactory = configuration.buildSessionFactory();
            System.out.println("[标记]初始化SessionFactory");
            }catch(Exception e){
            System.out.println("[异常]创建SessionFactory时发生异常,异常原因如下:");
            e.printStackTrace();
            }
        }

         /**
     34 * getSession()方法
     35 * @return Session对象
     36 * @throws HibernateException
     37 */
     public Session getSession(){
        Session session = null;
        try{
            session = sessionFactory.openSession();
            }catch(Exception e){
            System.out.println("[异常]开启Session时发生异常,异常原因如下:");
            e.printStackTrace();
        }
         return session;
         }

        /**
     50 * closeSession()方法
     51 * @param session 要关闭的Session对象
     52 */
      public void closeSession(Session session){
        try{
            if(null != session)
                session.close();
            }catch(Exception e){
            System.out.println("[异常]关闭Session时发生异常,异常原因如下:");
            e.printStackTrace();
            }
        }
             }
