package com.migration.db.repository;

import com.migration.db.model.security.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Long> {
  @Query("SELECT DISTINCT user FROM User user " +
      "INNER JOIN FETCH user.authorities AS authorities " +
      "WHERE user.username = :username")
  User findByUsername(@Param("username") String username);
}
