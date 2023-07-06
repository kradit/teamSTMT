// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'submit_table.dart';
import 'detail_table.dart';
import 'submit_data.dart';

class SubmitOrderPage extends StatefulWidget {
  const SubmitOrderPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SubmitOrderPageState createState() => _SubmitOrderPageState();
}

class _SubmitOrderPageState extends State<SubmitOrderPage> {
  bool _isRowClicked = false;

  late SubmitOrderData _selectedSubmitOrder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isRowClicked
          ? DetailTable(selectedSubmitOrder: _selectedSubmitOrder)
          : SubmitOrderTable(
              onRowClick: (SubmitOrder) {
                setState(() {
                  _isRowClicked = true;

                  _selectedSubmitOrder = SubmitOrder;
                });
              },
            ),
    );
  }
}
