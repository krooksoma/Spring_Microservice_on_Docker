package com.defaria.spring_microservice.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Table(name="account")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {

    @Id
    @Column(name="customer_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer customerId;

    @Column(name = "account_number")
    private Integer accountNumber;

    @Column(name="branch_code")
    private String branchCode;

    @Column(name="account_type")
    private String accountType;

    @Column(name="created_at")
    private Date createdAt;

    @Column(name="updated_at")
    private Date updatedAt;
}
