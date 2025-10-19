package com.example.ordermicroservice.controller;

import com.example.ordermicroservice.model.Order;
import com.example.ordermicroservice.service.OrderService;
import org.springframework.web.bind.annotation.*;
import java.util.List;
//test commit
@RestController
@RequestMapping("/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PostMapping
    public Order createOrder(@RequestBody Order order) {
        return orderService.saveOrder(order);
    }

    @GetMapping
    public List<Order> getOrders() {
        return orderService.getAllOrders();
    }

    @GetMapping("/{id}")
    public Order getOrder(@PathVariable Long id) {
        return orderService.getOrderById(id);
    }
    @GetMapping("/")
public String home() {
    return "Order Microservice is up and running!";
}

}
