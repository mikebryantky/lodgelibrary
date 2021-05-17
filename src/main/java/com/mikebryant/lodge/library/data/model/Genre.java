package com.mikebryant.lodge.library.data.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Genre {
    @Id
    @Column(name = "uuid", nullable = false, length = 36)
    private String uuid;

    @Column(name = "genre_name", nullable = false, length = 150)
    private String genreName;

    @OneToMany(mappedBy = "uuid")
    private List<Book> books = new ArrayList<>();
}
