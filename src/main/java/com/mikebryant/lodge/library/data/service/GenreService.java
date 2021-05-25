package com.mikebryant.lodge.library.data.service;

import com.mikebryant.lodge.library.data.model.Genre;
import com.mikebryant.lodge.library.data.repository.GenreRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;

@Service
public class GenreService {
    private final GenreRepository genreRepository;

    public GenreService(GenreRepository genreRepository) {
        this.genreRepository = genreRepository;
    }

    public Genre get(String uuid) {
        Optional<Genre> entity = genreRepository.findById(uuid);
        return entity.orElseThrow(() -> new EntityNotFoundException("No Genre found with uuid " + uuid));
    }

    public List<Genre> getAll() {
        return genreRepository.findAll(Sort.by(Sort.Direction.ASC, "genreName"));
    }

    public Genre save(Genre entity) {
        return genreRepository.save(entity);
    }

    public void delete(String uuid) {
        genreRepository.deleteById(uuid);
    }
}
