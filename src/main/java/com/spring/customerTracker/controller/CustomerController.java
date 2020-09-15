package com.spring.customerTracker.controller;

import com.spring.customerTracker.entity.Customer;
import com.spring.customerTracker.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping
    public String getCustomers(Model model){
        List<Customer> customers = customerService.getCustomers();
        model.addAttribute("customers",customers);
        return "customer-list";
    }

    @GetMapping("/newCustomer")
    public String showAddCustomer(Model model){
        Customer customer = new Customer();
        model.addAttribute("customer",customer);
        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println(customer.getFirstName() + " " + customer.getLastName() + " " + customer.getEmail());
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        customerService.addCustomer(customer);
        return "redirect:/customers";
    }

    @GetMapping("/customer")
    public String getCustomer(@RequestParam("id") int id, Model model){
        Customer customer = customerService.getCustomer(id);
        model.addAttribute("customer",customer);
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int id){
        customerService.deleteCustomer(id);
        return "redirect:/customers";
    }
}
