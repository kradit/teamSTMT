// import 'package:flutter/material.dart';

// class Synchronization extends StatefulWidget {
//   const Synchronization({super.key});

//   @override
//   State<Synchronization> createState() => _SynchronizationState();
// }

// class _SynchronizationState extends State<Synchronization> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(child: Text('Version compatibility issue')),
//     );
//   }
// }


import 'package:flutter/material.dart';

// import 'package:mba_final/shiny/lib/main%20(1).dart';
// import 'package:mac__tools/shiny/lib/main (1).dart';

import 'package:path_provider/path_provider.dart';

import 'package:sembast/sembast.dart';


import 'package:sembast_sqflite/sembast_sqflite.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

 

class Synchronization extends StatefulWidget {

  const Synchronization({Key? key}) : super(key: key);

 

  @override

  _SynchronizationState createState() => _SynchronizationState();

}

 

class _SynchronizationState extends State<Synchronization> {

  late Database _database;

  late StoreRef<int, Map<String, dynamic>> _store;

  List<Map<String, dynamic>> _data = [];

 

  @override

  void initState() {

    super.initState();

    _initializeDatabase();

  }

 

  Future<void> _initializeDatabase() async {

    final directory = await getApplicationDocumentsDirectory();

    final path = directory.path + '/data.db';

    final factory = getDatabaseFactorySqflite(sqflite.databaseFactory);

 

    _database = await factory.openDatabase(path);

    _store = intMapStoreFactory.store('products');

    _fetchData();

  }

 

  Future<void> _fetchData() async {

    final records = await _store.find(_database);

    setState(() {

      _data = records.map((record) => record.value).toList();

    });

  }

 

  Future<void> _syncData() async {

    // Simulate syncing data with a remote server

    await Future.delayed(Duration(seconds: 2));

    setState(() {

      // Update the UI with the synced data

      _data = List.generate(

        10,

        (index) => {

          'id': index + 1,

          'name': 'Product ${index + 1}',

          'description': 'Description ${index + 1}',

        },

      );

    });

  }

 

  Future<void> _deleteProduct(int productId) async {

    await _store.record(productId).delete(_database);

    await _fetchData(); // Fetch updated data after deletion

  }

 

  @override

  void dispose() {

    _database.close();

    super.dispose();

  }

 

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Synchronization'),

        backgroundColor: Colors.red,

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(

              onPressed: _syncData,

              style: ElevatedButton.styleFrom(primary: Colors.red),

              child: Text('Sync Data'),

            ),

            SizedBox(height: 20),

            Expanded(

              child: ListView.builder(

                shrinkWrap: true,

                itemCount: _data.length,

                itemBuilder: (context, index) {

                  final product = _data[index];

                  return Dismissible(

                    key: ValueKey(product['id']),

                    background: Container(color: Colors.red),

                    child: ListTile(

                      title: Text(product['name']),

                      subtitle: Text(product['description']),

                      trailing: IconButton(

                        icon: const Icon(Icons.delete),

                        onPressed: () => _deleteProduct(product['id']),

                      ),

                    ),

                  );

                },

              ),

            ),

          ],

        ),

      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {

          setState(() {

            final int lastProductId = _data.isNotEmpty ? _data.last['id'] : 0;

            final newProduct = {

              'id': lastProductId + 1,

              'name': 'Product ${lastProductId + 1}',

              'description': 'Description ${lastProductId + 1}',

            };

            _data.add(newProduct);

          });

        },

        child: Icon(Icons.add),

      ),

    );

  }

}