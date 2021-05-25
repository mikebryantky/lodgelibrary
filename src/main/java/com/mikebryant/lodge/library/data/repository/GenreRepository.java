package com.mikebryant.lodge.library.data.repository;

import com.mikebryant.lodge.library.data.model.Book;
import com.mikebryant.lodge.library.data.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenreRepository extends JpaRepository<Genre, String> {
}
