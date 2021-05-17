package com.mikebryant.lodge.library.data.service;

import com.mikebryant.lodge.library.data.model.Book;
import com.mikebryant.lodge.library.data.repository.BookRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
public class BookService {
    private final BookRepository bookRepository;


    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Book get(String uuid) {
        Optional<Book> entity = bookRepository.findById(uuid);
        return entity.orElseThrow(() -> new EntityNotFoundException("No Book found with uuid " + uuid));
    }

    public List<Book> getAll() {
        return bookRepository.findAll(Sort.by(Sort.Direction.ASC, "title"));
    }

    public Book save(Book entity) {
        return bookRepository.save(entity);
    }

    public void delete(String uuid) {
        bookRepository.deleteById(uuid);
    }
}
