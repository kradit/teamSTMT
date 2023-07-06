import 'package:flutter_test/flutter_test.dart';
import 'package:mac__tools/kundan/master_order/m_data.dart';

void main() {
  group('Testing your code', () {
    test('Testing MasterItem', () {
      final masterItem = MasterItem(
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
      );

      expect(masterItem.itemNo, 'MI1');

      expect(masterItem.description, 'Master Item 1');

      expect(masterItem.qtySold, '10');

      expect(masterItem.onHand, '5');

      expect(masterItem.pack, '1');

      expect(masterItem.avgCost, '9.99');

      expect(masterItem.stock, 'In Stock');

      expect(masterItem.status, 'OK');

      expect(masterItem.replacementItem, 'Replacement 1');

      expect(masterItem.warranty, '1 Year');
    });

    test('Testing RecentlySoldItem', () {
      final recentlySoldItem = RecentlySoldItem(
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
      );

      expect(recentlySoldItem.itemNo, 'RS1');

      expect(recentlySoldItem.description, 'Recently Sold Item 1');

      expect(recentlySoldItem.qtySold, '5');

      expect(recentlySoldItem.onHand, '10');

      expect(recentlySoldItem.pack, '1');

      expect(recentlySoldItem.avgCost, '9.99');

      expect(recentlySoldItem.stock, 'In Stock');

      expect(recentlySoldItem.status, 'OK');

      expect(recentlySoldItem.replacementItem, 'Replacement 1');

      expect(recentlySoldItem.warranty, '1 Year');
    });

    test('Testing RecentlyWarrantiedItem', () {
      final recentlyWarrantiedItem = RecentlyWarrantiedItem(
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
      );

      expect(recentlyWarrantiedItem.itemNo, 'RW1');

      expect(recentlyWarrantiedItem.description, 'Recently Warrantied Item 1');

      expect(recentlyWarrantiedItem.qtySold, '10');

      expect(recentlyWarrantiedItem.onHand, '5');

      expect(recentlyWarrantiedItem.pack, '1');

      expect(recentlyWarrantiedItem.avgCost, '9.99');

      expect(recentlyWarrantiedItem.stock, 'In Stock');

      expect(recentlyWarrantiedItem.status, 'OK');

      expect(recentlyWarrantiedItem.replacementItem, 'Replacement 1');

      expect(recentlyWarrantiedItem.warranty, '1 Year');
    });

    test('Testing SubitemListItem', () {
      final subitemListItem = SubitemListItem(
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
      );

      expect(subitemListItem.itemNo, 'SI1');

      expect(subitemListItem.description, 'Subitem List Item 1');

      expect(subitemListItem.qtySold, '15');

      expect(subitemListItem.onHand, '20');

      expect(subitemListItem.pack, '1');

      expect(subitemListItem.avgCost, '4.99');

      expect(subitemListItem.stock, 'In Stock');

      expect(subitemListItem.status, 'OK');

      expect(subitemListItem.replacementItem, 'Replacement 1');

      expect(subitemListItem.warranty, 'N/A');
    });

    test('Testing data lists', () {
      // Test the contents of the data lists

      expect(masterItems.length, 2);

      expect(recentlySoldItems.length, 2);

      expect(recentlyWarrantiedItems.length, 2);

      expect(subitemListItems.length, 2);

      // Add more specific tests as needed for your data lists
    });
  });
}
