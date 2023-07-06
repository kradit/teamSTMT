import 'package:flutter/material.dart';
import 'invoice_data.dart';

class DetailTable extends StatelessWidget {
  final InvoiceData selectedInvoice;
  final Function(ItemData) onEdit;

  const DetailTable(
      {Key? key, required this.selectedInvoice, required this.onEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Invoice Details - ${selectedInvoice.invoiceNo}'),
        ),
        body: ListView(children: [
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
                DataColumn(label: Text('Invoice Quantity')),
                DataColumn(label: Text('Received Quantity')),
                DataColumn(label: Text('Cost')),
                DataColumn(label: Text('Process Cost')),
                DataColumn(label: Text('Sales Tax')),
                DataColumn(label: Text('Box')),
                DataColumn(label: Text('Mac Order Number')),
                DataColumn(label: Text('Edit')),
              ],
              rows: selectedInvoice.itemList.map((item) {
                return DataRow(
                  cells: [
                    DataCell(Text(item.itemNo)),
                    DataCell(Text(item.description)),
                    DataCell(Text(item.invoiceQuantity)),
                    DataCell(Text(item.receivedQuantity)),
                    DataCell(Text(item.cost)),
                    DataCell(Text(item.processCost)),
                    DataCell(Text(item.salesTax)),
                    DataCell(Text(item.box)),
                    DataCell(Text(item.macOrderNumber)),
                    DataCell(IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        onEdit(item);
                      },
                    )),
                  ],
                );
              }).toList(),
            ),
          ),
        ]));
  }
}
