import 'package:blockchain/contract_linking.dart';
import 'package:blockchain/hello_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      
    // Inserting Provider as a parent of HelloUI()
    return ChangeNotifierProvider<ContractLinking>(
      create: (_) => ContractLinking(),
      child: const MaterialApp(
        title: "Hello World",
        home: HelloUI(),
      ),
    );
  }
}
