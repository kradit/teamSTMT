import 'package:flutter/material.dart';
import 'invoice_table.dart';
import 'detail_table.dart';
import 'invoice_data.dart';

class InvoicesPage extends StatefulWidget {
  const InvoicesPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InvoicesPageState createState() => _InvoicesPageState();
}

class _InvoicesPageState extends State<InvoicesPage> {
  bool _isRowClicked = false;

  late InvoiceData _selectedInvoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isRowClicked
          ? DetailTable(
              selectedInvoice: _selectedInvoice,
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              onEdit: (ItemData) {},
            )
          : InvoiceTable(
              onRowClick: (invoice) {
                setState(() {
                  _isRowClicked = true;

                  _selectedInvoice = invoice;
                });
              },
            ),
    );
  }
}
