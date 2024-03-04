package com.defaria.spring_microservice.repositories;

import com.defaria.spring_microservice.domain.Account;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface AccountRepository extends CrudRepository<Account, Integer> {

    @Query(value = "SELECT * FROM ACCOUNT a JOIN Customer c WHERE a.customer_id = c.customer_id", nativeQuery = true)
    public Collection<Account> getAccountAndUser();
}
