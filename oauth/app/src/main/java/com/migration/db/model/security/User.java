package com.migration.db.model.security;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "USER_", uniqueConstraints = { @UniqueConstraint(columnNames = { "USER_NAME" }) })
@Getter
@Setter
@EqualsAndHashCode(of = "id")
public class User implements UserDetails, Serializable {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID")
  private Long id;

  @Column(name = "USER_NAME")
  private String username;

  public String getPassword() {
    return password;
  }

  @Column(name = "PASSWORD")
  private String password;

  public boolean isAccountExpired() {
    return accountExpired;
  }

  @Column(name = "ACCOUNT_EXPIRED")
  private boolean accountExpired;

  public boolean isAccountLocked() {
    return accountLocked;
  }

  @Column(name = "ACCOUNT_LOCKED")
  private boolean accountLocked;

  public boolean isCredentialsExpired() {
    return credentialsExpired;
  }

  @Column(name = "CREDENTIALS_EXPIRED")
  private boolean credentialsExpired;

  @Column(name = "ENABLED")
  private boolean enabled;

  public Collection<Authority> getAuthorities() {
    return authorities;
  }

  @ManyToMany(fetch = FetchType.LAZY)
  @JoinTable(name = "USERS_AUTHORITIES", joinColumns = @JoinColumn(name = "USER_ID", referencedColumnName = "ID"), inverseJoinColumns = @JoinColumn(name = "AUTHORITY_ID", referencedColumnName = "ID"))
  @OrderBy
  @JsonIgnore
  private Collection<Authority> authorities;

  @Override
  public boolean isAccountNonExpired() {
    return !isAccountExpired();
  }

  @Override
  public boolean isAccountNonLocked() {
    return !isAccountLocked();
  }

  @Override
  public boolean isCredentialsNonExpired() {
    return !isCredentialsExpired();
  }

  @Override
  public boolean isEnabled() {
    return enabled;
  }

  public String getUsername() {
    return username;
  }
}
