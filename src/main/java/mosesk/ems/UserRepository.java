package mosesk.ems;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByEmail(String email);
    User findByName(String name);
    Optional<User> findByPassword(String password);

    Boolean existsByEmail(String email);
	boolean existsByName(String name);
	boolean existsByPassword(String password);

}
