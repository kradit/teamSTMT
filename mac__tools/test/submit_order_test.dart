import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mac__tools/kundan/submit_order/submit_data.dart';
import 'package:mac__tools/kundan/submit_order/submit_order_pages.dart';
import 'package:mac__tools/kundan/submit_order/detail_table.dart';
import 'package:mac__tools/kundan/submit_order/submit_table.dart';

void main() {
  testWidgets('SubmitOrderPage - Row Clicked', (WidgetTester tester) async {
    // Create a mock invoice
    final SubmitOrderData mockSubmitOrder = SubmitOrderData(
      mbaOrderNumber: 'MBA001',
      type: 'Type 1',
      orderDate: '2023-05-20',
      statusDate: '2023-05-20',
      status: 'pending',
      creditReview: 'inprogress',
      shopcustomer: 'shop',
      itemList: [
        ItemData(
          itemNo: '1',
          description: 'Item 1',
          orderQuantity: '10',
          recQuantity: '8',
          shipQty: '8',
          shipDate: '2023-05-21',
          boQty: '0',
          boExtDate: '2023-05-21',
          cancelQty: '3',
          reqQty: '5',
          shipping: 'Shipping 1',
          promo: "Promo 1",
          mbaOrderNumber: 'MBA001',
          errorMessage: 'NA',
        )
      ],
    );

    // Build the Page widget
    await tester.pumpWidget(
      const MaterialApp(
        home: SubmitOrderPage(),
      ),
    );

    // Verify that Table is displayed initially
    expect(find.byType(SubmitOrderTable), findsOneWidget);
    expect(find.byType(DetailTable), findsNothing);
  });
}
