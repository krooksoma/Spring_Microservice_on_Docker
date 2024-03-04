package com.defaria.spring_microservice.controllers;

import com.defaria.spring_microservice.domain.Customer;
import com.defaria.spring_microservice.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class ApiController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/customerslist")
    public List<Customer> helloWorld(){
        return customerService.findAllCustomers();
    }

    @GetMapping("/customer/customeraccountandbalance")
    public Optional<Customer> findCustomerAccountAndBalance(@RequestBody Integer customerId){
        return customerService.findCustomerAccountAndBalance(customerId);
    }
}
