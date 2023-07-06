import 'package:flutter/material.dart';
import 'invoice_data.dart';

class InvoiceTable extends StatelessWidget {
  final Function(InvoiceData) onRowClick;

  const InvoiceTable({Key? key, required this.onRowClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 9, 145, 223),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: DataTable(
              headingRowColor: MaterialStateColor.resolveWith(
                (states) => Color.fromARGB(255, 13, 176, 252),
              ),
              dataRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.white70,
              ),
              columns: const [
                DataColumn(label: Text('Invoice No.')),
                DataColumn(label: Text('Date Submitted')),
                DataColumn(label: Text('Date Checked In')),
                DataColumn(label: Text('MOC')),
                DataColumn(label: Text('Freight')),
                DataColumn(label: Text('Total in \$')),
                DataColumn(label: Text('Sales Tax')),
              ],
              rows: InvoiceData.invoiceList.map((invoice) {
                return DataRow(
                  key: ValueKey(invoice),
                  cells: [
                    DataCell(Text(invoice.invoiceNo)),
                    DataCell(Text(invoice.dateSubmitted)),
                    DataCell(Text(invoice.dateCheckedIn)),
                    DataCell(Text(invoice.moc)),
                    DataCell(Text(invoice.freight)),
                    DataCell(Text(invoice.total)),
                    DataCell(Text(invoice.salesTax)),
                  ],
                  onSelectChanged: (isSelected) {
                    if (isSelected != null && isSelected) {
                      onRowClick(invoice);
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
