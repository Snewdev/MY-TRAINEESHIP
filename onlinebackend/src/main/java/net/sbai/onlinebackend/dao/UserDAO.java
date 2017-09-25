package net.sbai.onlinebackend.dao;

import java.util.List;

import net.sbai.onlinebackend.dto.Address;
import net.sbai.onlinebackend.dto.Cart;
import net.sbai.onlinebackend.dto.User;

public interface UserDAO {

	// add an user
	boolean addUser(User user);
	User getByEmail(String email);
	
	// add an address
	boolean addAddress(Address address);
	// alternative
	 Address getBillingAddress(int userId);
	 List<Address> listShippingAddresses(int userId);
	
/*	
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);
*/
	

}