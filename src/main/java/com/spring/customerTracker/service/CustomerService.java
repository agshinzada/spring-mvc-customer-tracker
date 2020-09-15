package com.spring.customerTracker.service;

import com.spring.customerTracker.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void addCustomer(Customer customer);

    Customer getCustomer(int id);

    void deleteCustomer(int id);
}
