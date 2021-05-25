package com.mikebryant.lodge.library.data.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "book_author")
public class BookAuthor {
    @Id
    @Column(name = "uuid", nullable = false, length = 36)
    private String uuid;

    @ManyToOne
    @JoinColumn(name = "book_uuid", referencedColumnName = "uuid", nullable = false)
    private Book book = new Book();

    @ManyToOne
    @JoinColumn(name = "author_uuid", referencedColumnName = "uuid", nullable = false)
    private Author author = new Author();
}
