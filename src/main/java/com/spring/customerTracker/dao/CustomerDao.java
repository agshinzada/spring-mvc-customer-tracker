package com.spring.customerTracker.dao;

import com.spring.customerTracker.entity.Customer;

import java.util.List;

public interface CustomerDao {
    List<Customer> getCustomers();

    void addCustomer(Customer customer);

    Customer getCustomer(int id);

    void deleteCustomer(int id);
}
