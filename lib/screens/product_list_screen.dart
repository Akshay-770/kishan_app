// // import 'package:flutter/material.dart';
// // import '../models/product.dart';
// // import 'product_details_screen.dart';
// //
// // class ProductListScreen extends StatelessWidget {
// //   const ProductListScreen({super.key});
// //
// //   final List<Product> products = const [
// //     Product(
// //       id: 'p1',
// //       name: 'Fresh Tomatoes',
// //       description: 'Fresh ripe tomatoes from local farms',
// //       price: 30,
// //       imageUrl: 'https://placehold.co/100x100?text=Tomato',
// //     ),
// //     Product(
// //       id: 'p2',
// //       name: 'Green Beans',
// //       description: 'Organic green beans perfect for cooking',
// //       price: 40,
// //       imageUrl: 'https://placehold.co/100x100?text=Beans',
// //     ),
// //     Product(
// //       id: 'p3',
// //       name: 'Mango',
// //       description: 'Sweet and juicy mangoes',
// //       price: 100,
// //       imageUrl: 'https://placehold.co/100x100?text=Mango',
// //     ),
// //     Product(
// //       id: 'p4',
// //       name: 'Potatoes',
// //       description: 'Fresh potatoes with high nutritional value',
// //       price: 25,
// //       imageUrl: 'https://placehold.co/100x100?text=Potato',
// //     ),
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Product List'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: products.length,
// //         itemBuilder: (context, index) {
// //           final product = products[index];
// //           return Card(
// //             margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
// //             child: ListTile(
// //               leading: Image.network(
// //                 product.imageUrl,
// //                 width: 60,
// //                 height: 60,
// //                 fit: BoxFit.cover,
// //               ),
// //               title: Text(product.name),
// //               subtitle: Text(product.description, maxLines: 2, overflow: TextOverflow.ellipsis),
// //               trailing: Text('₹${product.price.toStringAsFixed(0)}'),
// //               onTap: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => ProductDetailsScreen(product: product),
// //                   ),
// //                 );
// //               },
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import '../models/product.dart';
// import 'product_details_screen.dart';
//
// class ProductListScreen extends StatelessWidget {
//   const ProductListScreen({super.key});
//
//   final List<Product> products = [
//     Product(
//       id: 'p1',
//       name: 'Fresh Tomatoes',
//       description: 'Fresh ripe tomatoes from local farms',
//       price: 30,
//       imageUrl: 'https://placehold.co/100x100?text=Tomato',
//     ),
//     Product(
//       id: 'p2',
//       name: 'Green Beans',
//       description: 'Organic green beans perfect for cooking',
//       price: 40,
//       imageUrl: 'https://placehold.co/100x100?text=Beans',
//     ),
//     Product(
//       id: 'p3',
//       name: 'Mango',
//       description: 'Sweet and juicy mangoes',
//       price: 100,
//       imageUrl: 'https://placehold.co/100x100?text=Mango',
//     ),
//     Product(
//       id: 'p4',
//       name: 'Potatoes',
//       description: 'Fresh potatoes with high nutritional value',
//       price: 25,
//       imageUrl: 'https://placehold.co/100x100?text=Potato',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Product List'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           final product = products[index];
//           return Card(
//             margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//             child: ListTile(
//               leading: Image.network(
//                 product.imageUrl,
//                 width: 60,
//                 height: 60,
//                 fit: BoxFit.cover,
//               ),
//               title: Text(product.name),
//               subtitle:
//               Text(product.description, maxLines: 2, overflow: TextOverflow.ellipsis),
//               trailing: Text('₹${product.price.toStringAsFixed(0)}'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ProductDetailsScreen(product: product),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatelessWidget {
   ProductListScreen({super.key});

  final List<Product> products = [
    Product(
      id: 'p1',
      name: 'Fresh Tomatoes',
      description: 'Fresh ripe tomatoes from local farms',
      price: 30,
      imageUrl: 'https://placehold.co/100x100?text=Tomato',
    ),
    Product(
      id: 'p2',
      name: 'Green Beans',
      description: 'Organic green beans perfect for cooking',
      price: 40,
      imageUrl: 'https://placehold.co/100x100?text=Beans',
    ),
    Product(
      id: 'p3',
      name: 'Mango',
      description: 'Sweet and juicy mangoes',
      price: 100,
      imageUrl: 'https://placehold.co/100x100?text=Mango',
    ),
    Product(
      id: 'p4',
      name: 'Potatoes',
      description: 'Fresh potatoes with high nutritional value',
      price: 25,
      imageUrl: 'https://placehold.co/100x100?text=Potato',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle:
              Text(product.description, maxLines: 2, overflow: TextOverflow.ellipsis),
              trailing: Text('₹${product.price.toStringAsFixed(0)}'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/product-details',
                  arguments: {'product': product},
                );
              },
            ),
          );
        },
      ),
    );
  }
}
