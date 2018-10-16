package com.startup.controller;

import com.startup.dao.ApplicationDao;
import com.startup.model.Blog;
import com.startup.model.FatToFitJourney;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by vamsi on 10/1/18.
 */
@Controller
public class ApplicationController {
    @RequestMapping(value = "/viewfattofitjourneys", method = RequestMethod.GET)
    public static ModelAndView getAllJournies() throws SQLException {
        String query = "select * from fattofitjourney";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connection = ApplicationDao.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            List<FatToFitJourney> fatToFitJourneys = new LinkedList<>();
            while (resultSet.next()) {
                FatToFitJourney fatToFitJourney = FatToFitJourney.builder().userName(resultSet.getString("name"))
                        .description(resultSet.getString("description")).build();
                fatToFitJourneys.add(fatToFitJourney);
            }
            ModelAndView modelAndView = new ModelAndView("fat_to_fit_journey");
            modelAndView.addObject("fatToFitJourneys", fatToFitJourneys);
            return modelAndView;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ApplicationDao.closeAllResources(connection, statement, resultSet);
        }
        return null;
    }

    @RequestMapping(value = "/addfattofitjourneypage")
    public ModelAndView addFatToFitJourneyPage(HttpServletRequest request) throws SQLException {
        ModelAndView modelAndView = new ModelAndView("add_fat_to_fit_journey");
        return modelAndView;
    }

    @RequestMapping(value = "/addfattofitjourney")
    public ModelAndView addFatToFitJourney(HttpServletRequest request) throws SQLException,
            UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String description = request.getParameter("desc");
        FatToFitJourney fatToFitJourney = FatToFitJourney.builder().userName(name).email(email).description(description)
                .build();
        String query = "insert into fattofitjourney(name,email,description) values(?,?,?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = ApplicationDao.getConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, description);
            preparedStatement.execute();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ApplicationDao.closeAllResources(connection, null, null);
        }
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("name", name);
        return modelAndView;
    }

    @RequestMapping(value = "/fitnessandhealthblog", method = RequestMethod.GET)
    public static ModelAndView viewBlog() throws SQLException {
        String query = "select * from blog";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connection = ApplicationDao.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            List<Blog> blogs = new LinkedList<>();
            while (resultSet.next()) {
                Blog blog = Blog.builder().description(resultSet.getString("description")).name(resultSet.getString("name")).build();
                blogs.add(blog);
            }
            ModelAndView modelAndView = new ModelAndView("fitness_blog");
            modelAndView.addObject("blogs", blogs);
            return modelAndView;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ApplicationDao.closeAllResources(connection, statement, resultSet);
        }
        return null;
    }


    @RequestMapping(value = "/addblog")
    public ModelAndView addBlogToDb(HttpServletRequest request) throws SQLException,
            UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String description = request.getParameter("desc");
        Blog blog = Blog.builder().name(name).description(description)
                .build();
        String query = "insert into blog(name,description) values(?,?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = ApplicationDao.getConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, description);
            preparedStatement.execute();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ApplicationDao.closeAllResources(connection, null, null);
        }
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("name", name);
        return modelAndView;
    }

    @RequestMapping(value = "/addblogpage")
    public ModelAndView addBlogPage(HttpServletRequest request) throws SQLException,
            UnsupportedEncodingException {
        ModelAndView modelAndView = new ModelAndView("add_fitness_blog");
        return modelAndView;
    }
}
