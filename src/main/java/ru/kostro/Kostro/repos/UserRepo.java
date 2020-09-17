package ru.kostro.Kostro.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.kostro.Kostro.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
