import 'package:flutter/material.dart';
import 'submit_data.dart';

class DetailTable extends StatelessWidget {
  final SubmitOrderData selectedSubmitOrder;

  const DetailTable({Key? key, required this.selectedSubmitOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Submitted Order Details - ${selectedSubmitOrder.mbaOrderNumber}'),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            child: DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue),
              dataRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.white70),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              columns: const [
                DataColumn(label: Text('Item No.')),
                DataColumn(label: Text('Description')),
                DataColumn(label: Text('Order Quantity')),
                DataColumn(label: Text('Rec Quantity')),
                DataColumn(label: Text('Ship Qty')),
                DataColumn(label: Text('Ship Date')),
                DataColumn(label: Text('BO qty')),
                DataColumn(label: Text('BO Ext Date')),
                DataColumn(label: Text('Cancel Qty')),
                DataColumn(label: Text('Req Qty')),
                DataColumn(label: Text('Shipping')),
                DataColumn(label: Text('Promo')),
                DataColumn(label: Text('MBA Order number')),
                DataColumn(label: Text('Error Message')),
              ],
              rows: selectedSubmitOrder.itemList.map((item) {
                return DataRow(
                  cells: [
                    DataCell(Text(item.itemNo)),
                    DataCell(Text(item.description)),
                    DataCell(Text(item.orderQuantity)),
                    DataCell(Text(item.recQuantity)),
                    DataCell(Text(item.shipQty)),
                    DataCell(Text(item.shipDate)),
                    DataCell(Text(item.boQty)),
                    DataCell(Text(item.boExtDate)),
                    DataCell(Text(item.cancelQty)),
                    DataCell(Text(item.reqQty)),
                    DataCell(Text(item.shipping)),
                    DataCell(Text(item.promo)),
                    DataCell(Text(item.mbaOrderNumber)),
                    DataCell(Text(item.errorMessage)),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
