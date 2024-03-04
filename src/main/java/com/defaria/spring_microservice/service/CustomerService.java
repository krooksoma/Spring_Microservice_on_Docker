package com.defaria.spring_microservice.service;

import com.defaria.spring_microservice.domain.Customer;
import com.defaria.spring_microservice.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepo;

    public List<Customer> findAllCustomers(){
        try{
            return (List<Customer>) customerRepo.findAll();
        }catch (DataRetrievalFailureException e){
            throw new RuntimeException("Error while retrieving list of all customers: " + e.getMessage());
        }
    }

    public Optional<Customer> findCustomerAccountAndBalance(Integer customerId) {
        try{
            return customerRepo.findCustomerAccountById(customerId);
        }catch(RuntimeException e){
            throw new RuntimeException("Unable to find account for given customer: " + e.getMessage());
        }
    }
}
