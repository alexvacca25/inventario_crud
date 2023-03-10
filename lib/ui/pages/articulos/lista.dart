import 'package:flutter/material.dart';
import 'package:inventario_crud/domain/models/articles.dart';

class ListarArticulos extends StatefulWidget {
  const ListarArticulos({super.key});

  @override
  State<ListarArticulos> createState() => _ListarArticulosState();
}

class _ListarArticulosState extends State<ListarArticulos> {
  final List _listaart = listaArticulos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listado de Articulos'),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        ),
        body: ListView.builder(
            itemCount: _listaart.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_listaart[index].detalle),
                subtitle: Text(_listaart[index].codigo),
                leading: CircleAvatar(
                  child: Image.network(_listaart[index].foto),
                ),
                trailing: CircleAvatar(
                  radius: 12.0,
                  backgroundColor:
                      (_listaart[index].estado) ? Colors.green : Colors.grey,
                  child: (_listaart[index].estado)
                      ? Text("${_listaart[index].cantidad}")
                      : const Text("0"),
                ),
              );
            }));
  }
}
