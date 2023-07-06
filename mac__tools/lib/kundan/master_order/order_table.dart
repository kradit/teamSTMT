// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Master Order',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//     );
//   }
// }

// class MasterOrder extends StatefulWidget {
//   const MasterOrder({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   // ignore: library_private_types_in_public_api
//   _MasterorderState createState() => _MasterorderState();
// }

// class _MasterorderState extends State<MasterOrder> {
//   bool isMasterTableVisible = true;
//   bool isRecentlySoldTableVisible = false;
//   bool isRecentlyWarrantiedTableVisible = false;
//   bool isSubitemListTableVisible = false;
//   List<RecentlySoldItem> recentlySoldItems = [];
//   List<RecentlyWarrantiedItem> recentlyWarrantiedItems = [];
//   List<SubitemListItem> subitemListItems = [];

//   void showMasterTable() {
//     setState(() {
//       isMasterTableVisible = true;
//     });
//   }

//   void showRecentlySoldTable() {
//     setState(() {
//       isRecentlySoldTableVisible = true;
//     });
//   }

//   void showRecentlyWarrantiedTable() {
//     setState(() {
//       isRecentlyWarrantiedTableVisible = true;
//     });
//   }

//   void showSubitemListTable() {
//     setState(() {
//       isSubitemListTableVisible = true;
//     });
//   }

//   void addRecentlySoldItem() {
//     setState(() {
//       recentlySoldItems.add(RecentlySoldItem());
//     });
//   }

//   void addRecentlyWarrantiedItem() {
//     setState(() {
//       recentlyWarrantiedItems.add(RecentlyWarrantiedItem());
//     });
//   }

//   void addSubitemListItem() {
//     setState(() {
//       subitemListItems.add(SubitemListItem());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: showMasterTable,
//                 child: const Text('Master Order'),
//               ),
//               const SizedBox(height: 8),
//               if (isMasterTableVisible) const OrderTable(),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: showRecentlySoldTable,
//                 child: const Text('Recently Sold'),
//               ),
//               const SizedBox(height: 16),
//               if (isRecentlySoldTableVisible)
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     RecentlySoldTable(recentlySoldItems),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: addRecentlySoldItem,
//                       child: const Text('Add'),
//                     ),
//                   ],
//                 ),
//               const SizedBox(height: 32),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: showRecentlyWarrantiedTable,
//                 child: const Text('Recently Warrantied'),
//               ),
//               const SizedBox(height: 16),
//               if (isRecentlyWarrantiedTableVisible)
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     RecentlyWarrantiedTable(recentlyWarrantiedItems),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: addRecentlyWarrantiedItem,
//                       child: const Text('Add'),
//                     ),
//                   ],
//                 ),
//               const SizedBox(height: 32),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: showSubitemListTable,
//                 child: const Text('Subitem List'),
//               ),
//               const SizedBox(height: 16),
//               if (isSubitemListTableVisible)
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     SubitemListTable(subitemListItems),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: addSubitemListItem,
//                       child: const Text('Add'),
//                     ),
//                   ],
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OrderTable extends StatelessWidget {
//   const OrderTable({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: DataTable(
//         headingRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.blue),
//         dataRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.white70),
//         columns: const [
//           DataColumn(label: Text('Item No.')),
//           DataColumn(label: Text('DESCRIPTION')),
//           DataColumn(label: Text('COST')),
//           DataColumn(label: Text('ONHAND')),
//           DataColumn(label: Text('PACK')),
//           DataColumn(label: Text('MIN')),
//           DataColumn(label: Text('ORDER')),
//           DataColumn(label: Text('SHIP')),
//           DataColumn(label: Text('PROBLEMS')),
//         ],
//         rows: const [
//           DataRow(cells: [
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//           ]),
//           DataRow(cells: [
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//             DataCell(TextField()),
//           ]),
//           // Add more rows as needed
//         ],
//       ),
//     );
//   }
// }

// class RecentlySoldTable extends StatelessWidget {
//   final List<RecentlySoldItem> recentlySoldItems;

//   const RecentlySoldTable(this.recentlySoldItems, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: DataTable(
//         headingRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.blue),
//         dataRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.white70),
//         columns: const [
//           DataColumn(label: Text('Item No.')),
//           DataColumn(label: Text('DESCRIPTION')),
//           DataColumn(label: Text('Qty Sold')),
//           DataColumn(label: Text('ONHAND')),
//           DataColumn(label: Text('PACK')),
//           DataColumn(label: Text('Avg. Cost')),
//           DataColumn(label: Text('Stock')),
//           DataColumn(label: Text('Status')),
//           DataColumn(label: Text('Replacement Item')),
//           DataColumn(label: Text('Warranty')),
//         ],
//         rows: recentlySoldItems.map((item) {
//           return DataRow(cells: [
//             DataCell(TextField(
//               controller: TextEditingController(text: item.itemNo),
//               onChanged: (value) {
//                 item.itemNo = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.description),
//               onChanged: (value) {
//                 item.description = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.qtySold),
//               onChanged: (value) {
//                 item.qtySold = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.onHand),
//               onChanged: (value) {
//                 item.onHand = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.pack),
//               onChanged: (value) {
//                 item.pack = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.avgCost),
//               onChanged: (value) {
//                 item.avgCost = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.stock),
//               onChanged: (value) {
//                 item.stock = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.status),
//               onChanged: (value) {
//                 item.status = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.replacementItem),
//               onChanged: (value) {
//                 item.replacementItem = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.warranty),
//               onChanged: (value) {
//                 item.warranty = value;
//               },
//             )),
//           ]);
//         }).toList(),
//       ),
//     );
//   }
// }

// class RecentlyWarrantiedTable extends StatelessWidget {
//   final List<RecentlyWarrantiedItem> recentlyWarrantiedItems;

//   const RecentlyWarrantiedTable(this.recentlyWarrantiedItems, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: DataTable(
//         headingRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.blue),
//         dataRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.white70),
//         columns: const [
//           DataColumn(label: Text('Item No.')),
//           DataColumn(label: Text('DESCRIPTION')),
//           DataColumn(label: Text('Qty Sold')),
//           DataColumn(label: Text('ONHAND')),
//           DataColumn(label: Text('PACK')),
//           DataColumn(label: Text('Avg. Cost')),
//           DataColumn(label: Text('Stock')),
//           DataColumn(label: Text('Status')),
//           DataColumn(label: Text('Replacement Item')),
//           DataColumn(label: Text('Warranty')),
//         ],
//         rows: recentlyWarrantiedItems.map((item) {
//           return DataRow(cells: [
//             DataCell(TextField(
//               controller: TextEditingController(text: item.itemNo),
//               onChanged: (value) {
//                 item.itemNo = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.description),
//               onChanged: (value) {
//                 item.description = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.qtySold),
//               onChanged: (value) {
//                 item.qtySold = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.onHand),
//               onChanged: (value) {
//                 item.onHand = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.pack),
//               onChanged: (value) {
//                 item.pack = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.avgCost),
//               onChanged: (value) {
//                 item.avgCost = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.stock),
//               onChanged: (value) {
//                 item.stock = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.status),
//               onChanged: (value) {
//                 item.status = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.replacementItem),
//               onChanged: (value) {
//                 item.replacementItem = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.warranty),
//               onChanged: (value) {
//                 item.warranty = value;
//               },
//             )),
//           ]);
//         }).toList(),
//       ),
//     );
//   }
// }

// class SubitemListTable extends StatelessWidget {
//   final List<SubitemListItem> subitemListItems;

//   const SubitemListTable(this.subitemListItems, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: DataTable(
//         headingRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.blue),
//         dataRowColor:
//             MaterialStateColor.resolveWith((states) => Colors.white70),
//         columns: const [
//           DataColumn(label: Text('Item No.')),
//           DataColumn(label: Text('DESCRIPTION')),
//           DataColumn(label: Text('Qty Sold')),
//           DataColumn(label: Text('ONHAND')),
//           DataColumn(label: Text('PACK')),
//           DataColumn(label: Text('Avg. Cost')),
//           DataColumn(label: Text('Stock')),
//           DataColumn(label: Text('Status')),
//           DataColumn(label: Text('Replacement Item')),
//           DataColumn(label: Text('Warranty')),
//         ],
//         rows: subitemListItems.map((item) {
//           return DataRow(cells: [
//             DataCell(TextField(
//               controller: TextEditingController(text: item.itemNo),
//               onChanged: (value) {
//                 item.itemNo = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.description),
//               onChanged: (value) {
//                 item.description = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.qtySold),
//               onChanged: (value) {
//                 item.qtySold = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.onHand),
//               onChanged: (value) {
//                 item.onHand = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.pack),
//               onChanged: (value) {
//                 item.pack = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.avgCost),
//               onChanged: (value) {
//                 item.avgCost = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.stock),
//               onChanged: (value) {
//                 item.stock = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.status),
//               onChanged: (value) {
//                 item.status = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.replacementItem),
//               onChanged: (value) {
//                 item.replacementItem = value;
//               },
//             )),
//             DataCell(TextField(
//               controller: TextEditingController(text: item.warranty),
//               onChanged: (value) {
//                 item.warranty = value;
//               },
//             )),
//           ]);
//         }).toList(),
//       ),
//     );
//   }
// }

// class RecentlySoldItem {
//   String itemNo = '';
//   String description = '';
//   String qtySold = '';
//   String onHand = '';
//   String pack = '';
//   String avgCost = '';
//   String stock = '';
//   String status = '';
//   String replacementItem = '';
//   String warranty = '';
// }

// class RecentlyWarrantiedItem {
//   String itemNo = '';
//   String description = '';
//   String qtySold = '';
//   String onHand = '';
//   String pack = '';
//   String avgCost = '';
//   String stock = '';
//   String status = '';
//   String replacementItem = '';
//   String warranty = '';
// }

// class SubitemListItem {
//   String itemNo = '';
//   String description = '';
//   String qtySold = '';
//   String onHand = '';
//   String pack = '';
//   String avgCost = '';
//   String stock = '';
//   String status = '';
//   String replacementItem = '';
//   String warranty = '';
// }

import 'package:flutter/material.dart';
import 'm_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Order',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MasterOrder(title: 'Master Order'),
    );
  }
}

class MasterOrder extends StatefulWidget {
  const MasterOrder({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MasterorderState createState() => _MasterorderState();
}

class _MasterorderState extends State<MasterOrder> {
  bool isMasterTableVisible = true;
  bool isRecentlySoldTableVisible = true;
  bool isRecentlyWarrantiedTableVisible = true;
  bool isSubitemListTableVisible = true;

  // void showMasterTable() {
  //   setState(() {
  //     isMasterTableVisible = true;
  //   });
  // }

  void showRecentlySoldTable() {
    setState(() {
      isRecentlySoldTableVisible = true;
    });
  }

  void showRecentlyWarrantiedTable() {
    setState(() {
      isRecentlyWarrantiedTableVisible = true;
    });
  }

  void showSubitemListTable() {
    setState(() {
      isSubitemListTableVisible = true;
    });
  }

  void addRecentlySoldItem() {
    setState(() {
      recentlySoldItems.add(RecentlySoldItem(
        avgCost: '',
        description: '',
        itemNo: '',
        onHand: '',
        pack: '',
        qtySold: '',
        replacementItem: '',
        status: '',
        stock: '',
        warranty: '',
      ));
    });
  }

  void addRecentlyWarrantiedItem() {
    setState(() {
      recentlyWarrantiedItems.add(RecentlyWarrantiedItem(
        avgCost: '',
        description: '',
        itemNo: '',
        onHand: '',
        pack: '',
        qtySold: '',
        replacementItem: '',
        status: '',
        stock: '',
        warranty: '',
      ));
    });
  }

  void addSubitemListItem() {
    setState(() {
      subitemListItems.add(SubitemListItem(
        avgCost: '',
        description: '',
        itemNo: '',
        onHand: '',
        pack: '',
        qtySold: '',
        replacementItem: '',
        status: '',
        stock: '',
        warranty: '',
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DataTable(
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                  dataRowColor: MaterialStateColor.resolveWith(
                      (states) => Colors.white70),
                  columns: const [
                    DataColumn(label: Text('Item No')),
                    DataColumn(label: Text('Description')),
                    DataColumn(label: Text('Qty Sold')),
                    DataColumn(label: Text('On Hand')),
                    DataColumn(label: Text('Pack')),
                    DataColumn(label: Text('Avg. Cost')),
                    DataColumn(label: Text('Stock')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Replacement Item')),
                    DataColumn(label: Text('Warranty')),
                  ],
                  rows: masterItems
                      .map(
                        (item) => DataRow(
                          cells: [
                            DataCell(Text(item.itemNo)),
                            DataCell(Text(item.description)),
                            DataCell(Text(item.qtySold)),
                            DataCell(Text(item.onHand)),
                            DataCell(Text(item.pack)),
                            DataCell(Text(item.avgCost)),
                            DataCell(Text(item.stock)),
                            DataCell(Text(item.status)),
                            DataCell(Text(item.replacementItem)),
                            DataCell(Text(item.warranty)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: showRecentlySoldTable,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Recently Sold'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                  DataColumn(label: Text('DESCRIPTION')),
                  DataColumn(label: Text('Qty Sold')),
                  DataColumn(label: Text('ONHAND')),
                  DataColumn(label: Text('PACK')),
                  DataColumn(label: Text('Avg. Cost')),
                  DataColumn(label: Text('Stock')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Replacement Item')),
                  DataColumn(label: Text('Warranty')),
                ],
                rows: recentlySoldItems
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item.itemNo)),
                          DataCell(Text(item.description)),
                          DataCell(Text(item.qtySold)),
                          DataCell(Text(item.onHand)),
                          DataCell(Text(item.pack)),
                          DataCell(Text(item.avgCost)),
                          DataCell(Text(item.stock)),
                          DataCell(Text(item.status)),
                          DataCell(Text(item.replacementItem)),
                          DataCell(Text(item.warranty)),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: addRecentlySoldItem,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: showRecentlyWarrantiedTable,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Recently Warrantied'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                  DataColumn(label: Text('Item No')),
                  DataColumn(label: Text('Description')),
                  DataColumn(label: Text('Qty Sold')),
                  DataColumn(label: Text('On Hand')),
                  DataColumn(label: Text('Pack')),
                  DataColumn(label: Text('Avg. Cost')),
                  DataColumn(label: Text('Stock')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Replacement Item')),
                  DataColumn(label: Text('Warranty')),
                ],
                rows: recentlyWarrantiedItems
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item.itemNo)),
                          DataCell(Text(item.description)),
                          DataCell(Text(item.qtySold)),
                          DataCell(Text(item.onHand)),
                          DataCell(Text(item.pack)),
                          DataCell(Text(item.avgCost)),
                          DataCell(Text(item.stock)),
                          DataCell(Text(item.status)),
                          DataCell(Text(item.replacementItem)),
                          DataCell(Text(item.warranty)),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: addRecentlyWarrantiedItem,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: showSubitemListTable,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Subitem List'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                  DataColumn(label: Text('Item No')),
                  DataColumn(label: Text('Description')),
                  DataColumn(label: Text('Qty Sold')),
                  DataColumn(label: Text('On Hand')),
                  DataColumn(label: Text('Pack')),
                  DataColumn(label: Text('Avg. Cost')),
                  DataColumn(label: Text('Stock')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Replacement Item')),
                  DataColumn(label: Text('Warranty')),
                ],
                rows: subitemListItems
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item.itemNo)),
                          DataCell(Text(item.description)),
                          DataCell(Text(item.qtySold)),
                          DataCell(Text(item.onHand)),
                          DataCell(Text(item.pack)),
                          DataCell(Text(item.avgCost)),
                          DataCell(Text(item.stock)),
                          DataCell(Text(item.status)),
                          DataCell(Text(item.replacementItem)),
                          DataCell(Text(item.warranty)),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: addSubitemListItem,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
