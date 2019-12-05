package com.web.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.interfaces.CustomerService;
import com.web.model.Customer;



@Controller
@RequestMapping("/")
//@RequestMapping("/store")
public class UserController {
//	@RequestMapping(method = RequestMethod.POST)
//	private String verificationDetails(Model model, Login login) {
//		login.getName();
//		login.getPassword();
//		return "index";
//	}

	@Autowired
	CustomerService service;
	
	@Autowired
	MessageSource messageSource;
	
	@RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
    public String listCustomer(ModelMap model) {
 
        List<Customer> cust = service.findAllCustomers();
        model.addAttribute("customer", cust);
        return "allcustomer";
    }
 
    /*
     * This method will provide the medium to add a new Customer.
     */
    @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
    public String newCustomer(ModelMap model) {
        Customer cust = new Customer();
        model.addAttribute("customer", cust);
        model.addAttribute("edit", false);
        return "registration";
    }
 
    /*
     * This method will be called on form submission, handling POST request for
     * saving Customer in database. It also validates the user input
     */
    @RequestMapping(value = { "/new" }, method = RequestMethod.POST)
    public String saveCustomer(@Valid Customer customer, BindingResult result,
            ModelMap model) {
 
        if (result.hasErrors()) {
            return "registration";
        }
 
        /*
         * Preferred way to achieve uniqueness of field [name] should be implementing custom @Unique annotation 
         * and applying it on field [name] of Model class [Customer].
         * 
         * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
         * framework as well while still using internationalized messages.
         * 
         */
        if(!service.isCustomerNameUnique(customer.getId(), customer.getName())){
            FieldError nameError =new FieldError("customer","name",messageSource.getMessage("non.unique.name", new String[]{customer.getName()}, Locale.getDefault()));
            result.addError(nameError);
            return "registration";
        }
         
        service.saveCustomer(customer);
 
        model.addAttribute("success", "Customer " + customer.getName() + " registered successfully");
        return "success";
    }
 
 
    /*
     * This method will provide the medium to update an existing customer.
     */
    @RequestMapping(value = { "/edit-{name}-customer" }, method = RequestMethod.GET)
    public String editCustomer(@PathVariable String name, ModelMap model) {
        Customer cust = service.findCustomerByName(name);
        model.addAttribute("customer", cust);
        model.addAttribute("edit", true);
        return "registration";
    }
     
    /*
     * This method will be called on form submission, handling POST request for
     * updating customer in database. It also validates the user input
     */
    @RequestMapping(value = { "/edit-{name}-customer" }, method = RequestMethod.POST)
    public String updateCustomer(@Valid Customer customer, BindingResult result,
            ModelMap model, @PathVariable String name) {
 
        if (result.hasErrors()) {
            return "registration";
        }
 
        if(!service.isCustomerNameUnique(customer.getId(), customer.getName())){
			FieldError nameError =new FieldError("customer","name",messageSource.getMessage("non.unique.name", new String[]{customer.getName()}, Locale.getDefault()));
            result.addError(nameError);
            return "registration";
        }
 
        service.updateCustomer(customer);
 
        model.addAttribute("success", "Customer " + customer.getName()  + " updated successfully");
        return "success";
    }
 
     
    /*
     * This method will delete an employee by it's SSN value.
     */
    @RequestMapping(value = { "/delete-{name}-customer" }, method = RequestMethod.GET)
    public String deleteCustomer(@PathVariable String name) {
        service.deleteCustomerByName(name);
        return "redirect:/list";
    }
}
