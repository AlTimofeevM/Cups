package ru.kostro.Kostro.repos;

import org.springframework.data.repository.CrudRepository;
import ru.kostro.Kostro.domain.Cup;

import java.util.List;

public interface CupRepo extends CrudRepository<Cup, Long> {
    List<Cup> findByTitle(String title);
}
