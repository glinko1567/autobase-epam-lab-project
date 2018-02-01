package dao;

import model.Ride;
import model.Transport;
import model.User;

import java.util.List;

public interface RideDao {

    //create
    void add(Ride ride);

    //read
    Ride getById(Long id);

    List<Ride> getByExecutor(Transport transport);

    List<Ride> getByExecutorAndStatus(Transport transport, Ride.Status status);

    List<Ride> getByManagerAndStatus(User manager, Ride.Status status);

    List<Ride> getByCustomerAndStatus(User customer, Ride.Status status);

    List<Ride> getByCustomer(User customer);

    List<Ride> getAll();

    List<Ride> getByStatus(Ride.Status status);



    //update
    void update(Ride ride);

    //delete
    void delete(Ride ride);

}
