import 'package:flutter/material.dart';

class Order {
  final String id;
  final DateTime date;
  final int itemCount;
  final String status;
  final double total;

  Order({
    required this.id,
    required this.date,
    required this.itemCount,
    required this.status,
    required this.total,
  });
}

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});

  final List<Order> orders = [
    Order(
      id: 'ORD001',
      date: DateTime.now().subtract(const Duration(days: 2)),
      itemCount: 3,
      status: 'Delivered',
      total: 1200.00,
    ),
    Order(
      id: 'ORD002',
      date: DateTime.now().subtract(const Duration(days: 5)),
      itemCount: 5,
      status: 'Processing',
      total: 899.99,
    ),
    Order(
      id: 'ORD003',
      date: DateTime.now().subtract(const Duration(days: 10)),
      itemCount: 2,
      status: 'Cancelled',
      total: 299.49,
    ),
  ];

  void _showOrderDetails(BuildContext context, Order order) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Order ${order.id} Details'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Date: ${order.date.toLocal().toString().split(' ')[0]}'),
            Text('Item count: ${order.itemCount}'),
            Text('Status: ${order.status}'),
            Text('Total: ₹${order.total.toStringAsFixed(2)}'),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
      ),
      body: ListView.separated(
        itemCount: orders.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text('Order ID: ${order.id}'),
            subtitle: Text(
                '${order.itemCount} items - ${order.status} - ${order.date.toLocal().toString().split(' ')[0]}'),
            trailing: Text('₹${order.total.toStringAsFixed(2)}'),
            onTap: () => _showOrderDetails(context, order),
          );
        },
      ),
    );
  }
}
