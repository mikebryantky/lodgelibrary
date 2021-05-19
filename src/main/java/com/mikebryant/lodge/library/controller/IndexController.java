package com.mikebryant.lodge.library.controller;

import com.mikebryant.lodge.library.data.service.BookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class IndexController {
    private final BookService bookService;

    public IndexController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/")
    public String main(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();

        model.addAttribute("message", currentPrincipalName);
        model.addAttribute("books", bookService.getAll());

        return "index";
    }

    @GetMapping("notyet")
    public String notyet(Model model) {
        return "notyet";
    }
}
