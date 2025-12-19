package com.cdac;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BookController {

    @Autowired
    private BookDAO bookDAO;

    @GetMapping("/register")
    public String showForm() {
        return "register"; // JSP page name
    }

    @PostMapping("/registerbook")
    public String register(@ModelAttribute Book book) {
        bookDAO.registerBook(book);
        return "redirect:/viewbook";
    }

    @GetMapping("/viewbook")
    public String viewbook(Model model) {
        List<Book> books = bookDAO.viewAllBook();
        model.addAttribute("book", books);
        return "viewbook"; // JSP page name
    }
}
