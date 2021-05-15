package com.ssm.service;

import com.ssm.pojo.Books;

import java.util.List;
public interface BookService {

    //增加
    int addBook(Books books);

    //删
    int deleteBook(int id);

    //改
    int updateBook(Books books);

    //查
    Books queryBookById(int id);

    //查询所有书
    List<Books> queryAllBook();

    //按名字查询书籍
    List<Books> queryBookByName(String bookName);
}
