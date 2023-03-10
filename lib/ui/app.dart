import 'package:flutter/material.dart';
import 'package:inventario_crud/ui/pages/articulos/lista.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Inventario Crud',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const ListarArticulos());
  }
}
