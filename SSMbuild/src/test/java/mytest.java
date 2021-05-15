import com.ssm.pojo.Books;
import com.ssm.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class mytest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl", BookService.class);
//        List<Books> list=bookServiceImpl.queryAllBook();
//        for(Books books:list){
//            System.out.println(books);
//        }

//        Books books=bookServiceImpl.queryBookById(1);
//        System.out.println(books);

        System.out.println(bookServiceImpl.queryBookByName("sql"));
    }
}
