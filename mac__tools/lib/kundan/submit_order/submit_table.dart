// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'submit_data.dart';

class SubmitOrderTable extends StatelessWidget {
  final Function(SubmitOrderData) onRowClick;

  const SubmitOrderTable({Key? key, required this.onRowClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DataTable(
              headingRowColor: MaterialStateColor.resolveWith(
                (states) => const Color.fromARGB(255, 72, 152, 218),
              ),
              dataRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.white70,
              ),
              columns: const [
                DataColumn(label: Text('MBA Order Number')),
                DataColumn(label: Text('Type')),
                DataColumn(label: Text('Order Date')),
                DataColumn(label: Text('Status Date')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Credit Review')),
                DataColumn(label: Text('Shop/Customer')),
              ],
              rows: SubmitOrderData.SubmitOrderList.map((SubmitOrder) {
                return DataRow(
                  cells: [
                    DataCell(Text(SubmitOrder.mbaOrderNumber)),
                    DataCell(Text(SubmitOrder.type)),
                    DataCell(Text(SubmitOrder.orderDate)),
                    DataCell(Text(SubmitOrder.statusDate)),
                    DataCell(Text(SubmitOrder.status)),
                    DataCell(Text(SubmitOrder.creditReview)),
                    DataCell(Text(SubmitOrder.shopcustomer)),
                  ],
                  onSelectChanged: (isSelected) {
                    if (isSelected != null && isSelected) {
                      onRowClick(SubmitOrder);
                    }
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
