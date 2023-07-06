class InvoiceData {
  final String invoiceNo;

  final String dateSubmitted;

  final String dateCheckedIn;

  final String moc;

  final String freight;

  final String total;

  final String salesTax;

  final List<ItemData> itemList;

  InvoiceData({
    required this.invoiceNo,
    required this.dateSubmitted,
    required this.dateCheckedIn,
    required this.moc,
    required this.freight,
    required this.total,
    required this.salesTax,
    required this.itemList,
  });

  static List<InvoiceData> invoiceList = [
    InvoiceData(
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
        ),
      ],
    ),
    InvoiceData(
      invoiceNo: 'INV002',
      dateSubmitted: '2023-05-18',
      dateCheckedIn: '2023-05-22',
      moc: 'MOC456',
      freight: '\$30.00',
      total: '\$120.00',
      salesTax: '\$8.00',
      itemList: [
        ItemData(
          itemNo: '2',
          description: 'Item 2',
          invoiceQuantity: '5',
          receivedQuantity: '5',
          cost: '\$15.00',
          processCost: '\$3.00',
          salesTax: '\$0.75',
          box: 'Box 2',
          macOrderNumber: 'MOC123',
        ),
        ItemData(
          itemNo: '2',
          description: 'Item 2',
          invoiceQuantity: '10',
          receivedQuantity: '7',
          cost: '\$10.00',
          processCost: '\$5.00',
          salesTax: '\$1.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        ),
        ItemData(
          itemNo: '3',
          description: 'Item 3',
          invoiceQuantity: '10',
          receivedQuantity: '8',
          cost: '\$1.00',
          processCost: '\$50.00',
          salesTax: '\$10.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        ),
      ],
    ),
    InvoiceData(
      invoiceNo: 'INV003',
      dateSubmitted: '2023-05-17',
      dateCheckedIn: '2023-05-27',
      moc: 'MOC123',
      freight: '\$5.00',
      total: '\$10.00',
      salesTax: '\$10.00',
      itemList: [
        ItemData(
          itemNo: '1',
          description: 'Item 1',
          invoiceQuantity: '1',
          receivedQuantity: '8',
          cost: '\$10.00',
          processCost: '\$5.00',
          salesTax: '\$1.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        ),
        ItemData(
          itemNo: '2',
          description: 'Item 2',
          invoiceQuantity: '10',
          receivedQuantity: '7',
          cost: '\$10.00',
          processCost: '\$5.00',
          salesTax: '\$1.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        ),
      ],
    ),
    InvoiceData(
      invoiceNo: 'INV004',
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
        ),
      ],
    ),
    InvoiceData(
      invoiceNo: 'INV005',
      dateSubmitted: '2023-05-17',
      dateCheckedIn: '2023-05-27',
      moc: 'MOC123',
      freight: '\$5.00',
      total: '\$10.00',
      salesTax: '\$10.00',
      itemList: [
        ItemData(
          itemNo: '1',
          description: 'Item 1',
          invoiceQuantity: '1',
          receivedQuantity: '8',
          cost: '\$10.00',
          processCost: '\$5.00',
          salesTax: '\$1.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        ),
        ItemData(
          itemNo: '2',
          description: 'Item 2',
          invoiceQuantity: '10',
          receivedQuantity: '7',
          cost: '\$10.00',
          processCost: '\$5.00',
          salesTax: '\$1.00',
          box: 'Box 1',
          macOrderNumber: 'MOC123',
        ),
      ],
    ),
  ];
}

class ItemData {
  late final String itemNo;

  late final String description;

  late final String invoiceQuantity;

  late final String receivedQuantity;

  late final String cost;

  late final String processCost;

  late final String salesTax;

  late final String box;

  late final String macOrderNumber;

  ItemData({
    required this.itemNo,
    required this.description,
    required this.invoiceQuantity,
    required this.receivedQuantity,
    required this.cost,
    required this.processCost,
    required this.salesTax,
    required this.box,
    required this.macOrderNumber,
  });
}
