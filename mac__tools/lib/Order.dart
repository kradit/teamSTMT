import 'package:flutter/material.dart';
import 'package:mac__tools/kundan/invoices/invoices_page.dart';
import 'package:mac__tools/kundan/submit_order/submit_order_pages.dart';
import 'package:mac__tools/kundan/master_order/order_table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Order Procurement',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Order(),
    );
  }
}

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  OrderState createState() => OrderState();
}

// class _OrderState extends State<Order> {
//   Widget _currentPage = const SizedBox();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               AnimatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _currentPage = const MasterOrder(title: 'Master Order');
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red,
//                 ),
//                 child: const Text('Master Order'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _currentPage = const SubmitOrderPage();
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red,
//                 ),
//                 child: const Text('Submit Order'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _currentPage = const InvoicesPage();
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red,
//                 ),
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

class OrderState extends State<Order> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            children: [
              AnimatedButton(
                onPressed: () {
                  setState(() {
                    currentPageIndex = 0;
                  });
                },
                currentPageIndex: currentPageIndex,
                buttonIndex: 0,
                text: 'Master Order',
              ),
              AnimatedButton(
                onPressed: () {
                  setState(() {
                    currentPageIndex = 1;
                  });
                },
                currentPageIndex: currentPageIndex,
                buttonIndex: 1,
                text: 'Submit Order',
              ),
              AnimatedButton(
                onPressed: () {
                  setState(() {
                    currentPageIndex = 2;
                  });
                },
                currentPageIndex: currentPageIndex,
                buttonIndex: 2,
                text: 'Invoices',
              ),
            ],
          ),
          Expanded(
            child: getPage(currentPageIndex),
          ),
        ],
      ),
    );
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return MasterOrder(title: 'Master Order');
      case 1:
        return SubmitOrderPage();
      case 2:
        return InvoicesPage();
      default:
        return Container();
    }
  }
}

class AnimatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final int currentPageIndex;
  final int buttonIndex;
  final String text;

  const AnimatedButton({
    required this.onPressed,
    required this.currentPageIndex,
    required this.buttonIndex,
    required this.text,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  double scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      onTapDown: (_) {
        setState(() {
          scaleFactor = 1.2;
        });
      },
      onTapUp: (_) {
        setState(() {
          scaleFactor = 1.0;
        });
      },
      onTapCancel: () {
        setState(() {
          scaleFactor = 1.0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(scaleFactor),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}
