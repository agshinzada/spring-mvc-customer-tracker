package com.spring.customerTracker.dao;

import com.spring.customerTracker.entity.Customer;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDaoImp extends AbstractDao implements CustomerDao{

    @Override
    public List<Customer> getCustomers() {
        Session session = session();
        Query<Customer> query = session.createQuery("from Customer order by lastName",Customer.class);
        return query.list();
    }

    @Override
    public void addCustomer(Customer customer) {
        Session session = session();
        session.saveOrUpdate(customer);
    }

    @Override
    public Customer getCustomer(int id) {
        Session session = session();
        return session.get(Customer.class,id);
    }

    @Override
    public void deleteCustomer(int id) {
        Session session = session();
        Query query = session.createQuery("delete from Customer where id=:customerId");
        query.setParameter("customerId",id);
        query.executeUpdate();
    }
}
