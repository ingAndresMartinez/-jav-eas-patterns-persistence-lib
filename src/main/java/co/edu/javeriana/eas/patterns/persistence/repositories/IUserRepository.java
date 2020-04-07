package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.ProfileEntity;
import co.edu.javeriana.eas.patterns.persistence.entities.UserEntity;
import co.edu.javeriana.eas.patterns.persistence.entities.UserStatusEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface IUserRepository extends CrudRepository<UserEntity, Integer> {

    List<UserEntity> findByProfile(ProfileEntity profile);

    Optional<UserEntity> findByUserCodeAndPassword(String userCode, String password);

    List<UserEntity> findByStatus(UserStatusEntity status);

}