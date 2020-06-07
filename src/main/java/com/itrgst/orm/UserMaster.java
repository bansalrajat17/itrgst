package com.itrgst.orm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Builder(toBuilder = true)
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@NoArgsConstructor(access = AccessLevel.PACKAGE)
@Setter(value = AccessLevel.PACKAGE)
@Getter
@Table(name = "USER_MASTER")
public class UserMaster extends AuditParameters implements UserDetails {

    @Id
    @Column(name = "USERNAME")
    private String username;

    @Column(name = "PASSWORD")
    private String password;

    @Column(name = "PHONE")
    private String phone;

    @Column(name = "CITY")
    private String city;

    @Column(name = "ADDRESS")
    private String address;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "USER_ROLES", joinColumns = @JoinColumn(name = "USERNAME"), inverseJoinColumns = @JoinColumn(name = "ROLE_ID"))
    private List<RoleMaster> roleMasterList = new ArrayList<>();

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}