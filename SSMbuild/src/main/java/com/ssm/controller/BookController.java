package com.ssm.controller;


import com.ssm.pojo.Books;
import com.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询所有的书籍，并返回一个书记展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list =bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    @RequestMapping("/toAddBookPaper")
    public String addBookPaper(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println(books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdateBookPaper")
    public String toUpdatePaper(int id,Model model){
        Books books=bookService.queryBookById(id);
        model.addAttribute("book",books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println(bookService.updateBook(books));
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){
        bookService.deleteBook(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBookByName")
    public String queryBookByName(String bookName,Model model){
        List<Books> list=bookService.queryBookByName(bookName);
        if(list.size()==0){
            model.addAttribute("err","未查到有关书籍!");
            list=bookService.queryAllBook();
        }
        model.addAttribute("list", list);
        return "allBook";
    }

}
