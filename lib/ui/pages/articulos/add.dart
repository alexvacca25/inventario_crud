import 'package:flutter/material.dart';
import 'package:inventario_crud/domain/models/articles.dart';

class AddArticulo extends StatefulWidget {
  const AddArticulo({super.key});

  @override
  State<AddArticulo> createState() => _AddArticuloState();
}

class _AddArticuloState extends State<AddArticulo> {
  TextEditingController controldetalle = TextEditingController();
  TextEditingController controlcodigo = TextEditingController();
  TextEditingController controlcantidad = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Articulos'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Textos(
                controlador: controldetalle, titulo: 'Ingrese la Descripcion'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Textos(controlador: controlcodigo, titulo: 'Ingrese el Codigo'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Textos(
                controlador: controlcantidad, titulo: 'Ingrese la cantidad'),
          ),
          OutlinedButton(
              onPressed: () {
                Articulo a1 = Articulo(
                    foto: "",
                    detalle: controldetalle.text,
                    codigo: controlcodigo.text,
                    cantidad: controlcantidad.text,
                    estado: true);

                Navigator.pop(context, a1);
              },
              child: const Text('Adicionar'))
        ],
      ),
    );
  }
}

class Textos extends StatelessWidget {
  const Textos({super.key, required this.controlador, required this.titulo});

  final TextEditingController controlador;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      decoration: InputDecoration(
        filled: true,
        labelText: titulo,
        suffix: GestureDetector(
          child: const Icon(Icons.close),
          onTap: () {
            controlador.clear();
          },
        ),
      ),
    );
  }
}
