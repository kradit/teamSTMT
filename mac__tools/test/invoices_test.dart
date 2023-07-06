// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mac__tools/kundan/main.dart';
import 'package:mac__tools/kundan/invoices/invoice_data.dart';
import 'package:mac__tools/kundan/invoices/invoices_page.dart';
import 'package:mac__tools/kundan/invoices/invoice_table.dart';
import 'package:mac__tools/kundan/invoices/detail_table.dart';

void main() {
  testWidgets('InvoicesPage - Row Clicked', (WidgetTester tester) async {
    // Create a mock invoice
    // ignore: unused_local_variable
    final InvoiceData mockInvoice = InvoiceData(
      invoiceNo: 'INV001',
      dateSubmitted: '2023-05-15',
      dateCheckedIn: '2023-05-20',
      moc: 'MOC123',
      freight: '\$50.00',
      total: '\$150.00',
      salesTax: '\$10.00',
      itemList: [
        ItemData(
          itemNo: '1',
          description: 'Item 1',
          invoiceQuantity: '10',
          receivedQuantity: '8',
          cost: '\$10.00',
          processCost: '\$5.00',
          salesTax: '\$1.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        )
      ],
    );

    // Build the InvoicesPage widget
    await tester.pumpWidget(
      const MaterialApp(
        home: InvoicesPage(),
      ),
    );

    // Verify that InvoiceTable is displayed initially
    expect(find.byType(InvoiceTable), findsOneWidget);
    expect(find.byType(DetailTable), findsNothing);

    // final invoiceRowFinder =
    //     find.widgetWithText(DataRow, mockInvoice.invoiceNo);

    // expect(invoiceRowFinder, findsOneWidget);

    // await tester.tap(invoiceRowFinder);

    // // Rebuild the widget after the row click
    // await tester.pump();

    // // Verify that DetailTable is displayed and the selected invoice is passed
    // expect(find.byType(InvoiceTable), findsNothing);
    // expect(find.byType(DetailTable), findsOneWidget);
    // expect(find.byWidgetPredicate((widget) {
    //   if (widget is DetailTable && widget.selectedInvoice == mockInvoice) {
    //     return true;
    //   }
    //   return false;
    // }), findsOneWidget);
  });
}
