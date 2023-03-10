class Articulo {
  var foto;
  var detalle;
  var codigo;
  var cantidad;
  var estado;

  Articulo(
      {required this.foto,
      required this.detalle,
      required this.codigo,
      required this.cantidad,
      required this.estado});

  factory Articulo.desdeJson(Map jsonMap) {
    return Articulo(
        foto: jsonMap['foto'],
        detalle: jsonMap['detalle'],
        codigo: jsonMap['codigo'],
        cantidad: jsonMap['cantidad'],
        estado: jsonMap['estado']);
  }
}

var articulos1 = {
  "foto":
      "https://bicistore.com.co/wp-content/uploads/2019/06/61003-010-43_zoom_0c232813-2ee3-4cf4-8b00-7a947c5e2c5f_2000x2000.jpg",
  "detalle": "Gafas Tr A",
  "codigo": "GF0001",
  "cantidad": 30,
  "estado": true
};
var articulos2 = {
  "foto":
      "http://cdn.shopify.com/s/files/1/0615/0533/9449/products/thumbnail_664A8BC5-97C5-4F8D-8AA7-98991B53F3AE.jpg?v=1661116718",
  "detalle": "Zapatos",
  "codigo": "ZP0002",
  "cantidad": 10,
  "estado": false
};
var articulos3 = {
  "foto":
      "https://cdn.shopify.com/s/files/1/0262/4320/3125/products/jean-skinny-de-tiro-alto-rubi-1_grande.jpg?v=1665697367",
  "detalle": "Jeans Mujer",
  "codigo": "JF02309",
  "cantidad": 15,
  "estado": true
};

List<Articulo> listaArticulos = [
  Articulo.desdeJson(articulos1),
  Articulo.desdeJson(articulos2),
  Articulo.desdeJson(articulos3),
  Articulo.desdeJson(articulos1),
  Articulo.desdeJson(articulos2),
  Articulo.desdeJson(articulos3),
];
