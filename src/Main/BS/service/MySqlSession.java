package Main.BS.service;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;

class MySqlSession {
    public static SqlSession getSession() {
        SqlSession sqlSession = null;
        try {
            sqlSession = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("Main/CS3/mybatis-config.xml")).openSession();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sqlSession;

    }

}
