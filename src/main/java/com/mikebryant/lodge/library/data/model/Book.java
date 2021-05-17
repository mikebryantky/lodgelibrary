package com.mikebryant.lodge.library.data.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Entity
@Data
public class Book {
    @Id
    @Column(name = "uuid", nullable = false, length = 36)
    private String uuid;

    @Column(name = "title", nullable = false, length = 255)
    private String title;

    @Column(name = "sub_title", nullable = true, length = 255)
    private String subTitle;

    @Column(name = "isbn", nullable = true, length = 13)
    private String isbn;

    @Column(name = "publisher", nullable = true, length = 255)
    private String publisher;

    @Column(name = "publish_year", nullable = true)
    private Integer publishYear;

    @Column(name = "available_for_removal_ind", nullable = false, length = 1)
    private String availableForRemovalInd;

    @Column(name = "synopsis", nullable = true, length = -1)
    private String synopsis;

    @Column(name = "image_file", nullable = true, length = -1)
    private String imageFile;

    @OneToMany(mappedBy = "book")
    private List<BookAuthor> bookAuthors = new ArrayList<>();

    @OneToMany(mappedBy = "book")
    private List<Loan> loans = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "genre_uuid", referencedColumnName = "uuid", nullable = false)
    private Genre genre;
}
