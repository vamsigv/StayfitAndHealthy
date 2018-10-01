package com.startup.dao;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.Objects;

/**
 * Created by vamsi on 10/1/18.
 */
@Controller
public class ApplicationDao {

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager
                    .getConnection("jdbc:mysql://aag49i1wnvda80.ccnm5crsts86.us-east-2.rds.amazonaws.com:3306/fitness",
                            "vamsi", "vamsikrishna");
        } catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }

    public static void closeAllResources(Connection connection, Statement statement, ResultSet resultSet)
            throws SQLException {
        connection.close();
        if (Objects.nonNull(statement)) {
            statement.close();
        }
        if (Objects.nonNull(resultSet)) {
            resultSet.close();
        }
    }
}
