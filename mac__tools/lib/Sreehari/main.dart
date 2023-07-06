// import 'package:flutter/material.dart';
// //a
// import 'package:mac__tools/Sreehari/src/sample_feature/sample_item.dart';
// import 'package:realm/realm.dart';
// //b

// import 'src/app.dart';
// import 'src/settings/settings_controller.dart';
// import 'src/settings/settings_service.dart';

// void main() async {
//   //a
//   final app = App(AppConfiguration('mba-app-sekez'));
//   final user = app.currentUser ?? await app.logIn(Credentials.anonymous());
//   final realm = Realm(Configuration.flexibleSync(user, [SampleItem.schema]));
//   final allItems = realm.all<SampleItem>();
//   realm.subscriptions.update((mutableSubscriptions) {
//     mutableSubscriptions.add(realm.all<SampleItem>());
//   });
//   //b
//   final settingsController = SettingsController(SettingsService());

//   await settingsController.loadSettings();

//   // Run the app and pass in the SettingsController. The app listens to the
//   // SettingsController for changes, then passes it further down to the
//   // SettingsView.
//   runApp(MyApp(
//     settingsController: settingsController,
//     //a
//     items: allItems,
//     //b
//   ));
// }
