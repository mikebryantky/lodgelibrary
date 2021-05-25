package com.mikebryant.lodge.library.controller;

import com.mikebryant.lodge.library.data.model.Book;
import com.mikebryant.lodge.library.data.service.BookService;
import com.mikebryant.lodge.library.data.service.GenreService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class BookController {
    private final BookService bookService;
    private final GenreService genreService;

    public BookController(BookService bookService,
                          GenreService genreService) {
        this.bookService = bookService;
        this.genreService = genreService;
    }

    @GetMapping("book/view")
    public String getView(Model model, @RequestParam(name = "uuid") String uuid) {
        model.addAttribute("book", bookService.get(uuid));
        return "book/view";
    }

    @GetMapping("book/edit")
    public String getEdit(
            Model model,
            @RequestParam(required = false, name = "uuid", defaultValue = "_") String uuid) {
        Book book = "_".equals(uuid)
                ? new Book()
                : bookService.get(uuid);
        model.addAttribute("book", book);
        return "book/edit";
    }

    @PostMapping("book/save")
    public String save(
            Model model,
            @ModelAttribute Book book) {

        book.setGenre(genreService.getAll().get(0));
        book = bookService.save(book);
        model.addAttribute("book", book);
        return "book/edit";
    }

    @GetMapping("book/list")
    public String getAll(Model model) {
        model.addAttribute("books", bookService.getAll());
        return "book/list";
    }

}
