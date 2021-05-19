package com.mikebryant.lodge.library.controller;

import com.mikebryant.lodge.library.data.service.BookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class BookController {
    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("bookView")
    public String getView(Model model, @RequestParam("uuid") String uuid) {
        model.addAttribute("book", bookService.get(uuid));

        return "bookView";
    }

    @GetMapping("books")
    public String getAll(Model model) {
        model.addAttribute("books", bookService.getAll());

        return "books";
    }
}
