// ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'master_order/order_table.dart';
// import 'submit_order/submit_order_pages.dart';
// import 'invoices/invoices_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Order Procurement',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   Widget _currentPage = const SizedBox();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(15),
//           ),
//         ),
//         title: const Text('Order Procurement'),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _currentPage = const MasterOrder(title: 'Master Order');
//                   });
//                 },
//                 child: const Text('Master Order'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _currentPage = const SubmitOrderPage();
//                   });
//                 },
//                 child: const Text('Submit Order'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _currentPage = const InvoicesPage();
//                   });
//                 },
//                 child: const Text('Invoices'),
//               ),
//             ],
//           ),
//           Expanded(
//             child: _currentPage,
//           ),
//         ],
//       ),
//     );
//   }
// }
