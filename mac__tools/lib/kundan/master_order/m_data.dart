class MasterItem {
  final String itemNo;
  final String description;
  final String qtySold;
  final String onHand;
  final String pack;
  final String avgCost;
  final String stock;
  final String status;
  final String replacementItem;
  final String warranty;

  MasterItem({
    required this.itemNo,
    required this.description,
    required this.qtySold,
    required this.onHand,
    required this.pack,
    required this.avgCost,
    required this.stock,
    required this.status,
    required this.replacementItem,
    required this.warranty,
  });
}

class RecentlySoldItem {
  final String itemNo;
  final String description;
  final String qtySold;
  final String onHand;
  final String pack;
  final String avgCost;
  final String stock;
  final String status;
  final String replacementItem;
  final String warranty;

  RecentlySoldItem({
    required this.itemNo,
    required this.description,
    required this.qtySold,
    required this.onHand,
    required this.pack,
    required this.avgCost,
    required this.stock,
    required this.status,
    required this.replacementItem,
    required this.warranty,
  });
}

class RecentlyWarrantiedItem {
  final String itemNo;
  final String description;
  final String qtySold;
  final String onHand;
  final String pack;
  final String avgCost;
  final String stock;
  final String status;
  final String replacementItem;
  final String warranty;

  RecentlyWarrantiedItem({
    required this.itemNo,
    required this.description,
    required this.qtySold,
    required this.onHand,
    required this.pack,
    required this.avgCost,
    required this.stock,
    required this.status,
    required this.replacementItem,
    required this.warranty,
  });
}

class SubitemListItem {
  final String itemNo;
  final String description;
  final String qtySold;
  final String onHand;
  final String pack;
  final String avgCost;
  final String stock;
  final String status;
  final String replacementItem;
  final String warranty;

  SubitemListItem({
    required this.itemNo,
    required this.description,
    required this.qtySold,
    required this.onHand,
    required this.pack,
    required this.avgCost,
    required this.stock,
    required this.status,
    required this.replacementItem,
    required this.warranty,
  });
}

// Define your data for the tables here
List<MasterItem> masterItems = [
  MasterItem(
    itemNo: 'MI1',
    description: 'Master Item 1',
    qtySold: '10',
    onHand: '5',
    pack: '1',
    avgCost: '9.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 1',
    warranty: '1 Year',
  ),
  MasterItem(
    itemNo: 'MI2',
    description: 'Master Item 2',
    qtySold: '8',
    onHand: '2',
    pack: '1',
    avgCost: '14.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 2',
    warranty: '2 Years',
  ),
];

List<RecentlySoldItem> recentlySoldItems = [
  RecentlySoldItem(
    itemNo: 'RS1',
    description: 'Recently Sold Item 1',
    qtySold: '5',
    onHand: '10',
    pack: '1',
    avgCost: '9.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 1',
    warranty: '1 Year',
  ),
  RecentlySoldItem(
    itemNo: 'RS2',
    description: 'Recently Sold Item 2',
    qtySold: '3',
    onHand: '7',
    pack: '1',
    avgCost: '19.99',
    stock: 'Out of Stock',
    status: 'Damaged',
    replacementItem: 'Replacement 2',
    warranty: '2 Years',
  ),
  // Add more items as needed
];

List<RecentlyWarrantiedItem> recentlyWarrantiedItems = [
  RecentlyWarrantiedItem(
    itemNo: 'RW1',
    description: 'Recently Warrantied Item 1',
    qtySold: '10',
    onHand: '5',
    pack: '1',
    avgCost: '9.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 1',
    warranty: '1 Year',
  ),
  RecentlyWarrantiedItem(
    itemNo: 'RW2',
    description: 'Recently Warrantied Item 2',
    qtySold: '8',
    onHand: '2',
    pack: '1',
    avgCost: '14.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 2',
    warranty: '3 Years',
  ),
  // Add more items as needed
];

List<SubitemListItem> subitemListItems = [
  SubitemListItem(
    itemNo: 'SI1',
    description: 'Subitem List Item 1',
    qtySold: '15',
    onHand: '20',
    pack: '1',
    avgCost: '4.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 1',
    warranty: 'N/A',
  ),
  SubitemListItem(
    itemNo: 'SI2',
    description: 'Subitem List Item 2',
    qtySold: '7',
    onHand: '3',
    pack: '1',
    avgCost: '9.99',
    stock: 'In Stock',
    status: 'OK',
    replacementItem: 'Replacement 2',
    warranty: 'N/A',
  ),
  // Add more items as needed
];
