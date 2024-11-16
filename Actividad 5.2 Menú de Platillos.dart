void main() {
  // Crear un mapa para almacenar el menú de platillos
  Map<String, double> menu = {
    'Pasta': 30.0,
    'Pizza': 50.0,
    'Ensalada': 25.0,
    'Hamburguesa': 40.0
  };

  // Mostrar todos los datos del menú de platillos
  print('Menú de platillos:');
  mostrarMenu(menu);

  // Buscar un platillo específico
  String platilloBuscar = 'Pizza';
  buscarPlatillo(menu, platilloBuscar);

  // Actualizar el precio de un platillo
  String platilloActualizar = 'Hamburguesa';
  double nuevoPrecio = 45.0;
  actualizarPrecio(menu, platilloActualizar, nuevoPrecio);

  // Intentar actualizar el precio de un platillo que no existe
  String platilloInexistente = 'Tacos';
  actualizarPrecio(menu, platilloInexistente, 50.0);
}

// Función para mostrar todos los datos del menú de platillos
void mostrarMenu(Map<String, double> menu) {
  menu.forEach((platillo, precio) {
    print('$platillo: \$${precio.toStringAsFixed(2)}');
  });
}

// Función para buscar un platillo específico
void buscarPlatillo(Map<String, double> menu, String platillo) {
  if (menu.containsKey(platillo)) {
    print('Platillo encontrado: $platillo - \$${menu[platillo]!.toStringAsFixed(2)}');
  } else {
    print('El platillo "$platillo" no se encuentra en el menú.');
  }
}

// Función para actualizar el precio de un platillo
void actualizarPrecio(Map<String, double> menu, String platillo, double nuevoPrecio) {
  if (menu.containsKey(platillo)) {
    menu[platillo] = nuevoPrecio;
    print('El precio del platillo "$platillo" ha sido actualizado a \$${nuevoPrecio.toStringAsFixed(2)}');
  } else {
    print('El platillo "$platillo" no se encuentra en el menú. No se puede actualizar el precio.');
  }
}
