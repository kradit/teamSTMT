import 'package:flutter/material.dart';
import 'Aditya/singleReport.dart';

class IndividualReport extends StatefulWidget {
  const IndividualReport({super.key});

  @override
  State<IndividualReport> createState() => _IndividualReportState();
}

class _IndividualReportState extends State<IndividualReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderDetailsScreen(),
    );
  }
}
