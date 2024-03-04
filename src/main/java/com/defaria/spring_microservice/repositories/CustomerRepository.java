package com.defaria.spring_microservice.repositories;

import com.defaria.spring_microservice.domain.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {
    @Query(value = "SELECT * from Account WHERE customer_id = ?1", nativeQuery = true)
    Optional<Customer> findCustomerAccountById(Integer customerId);
}
