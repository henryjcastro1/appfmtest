class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de inicio'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a la siguiente pantalla'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaPantalla()),
            );
          },
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Regresar a la pantalla de inicio'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
En este ejemplo, la PantallaInicio contiene un botón que, cuando se presiona, navega a la SegundaPantalla utilizando el método Navigator.push(). La SegundaPantalla contiene otro botón que, cuando se presiona, regresa a la PantallaInicio utilizando el método Navigator.pop().

Ahora, debes definir la pantalla raíz de tu aplicación (por lo general, la pantalla de inicio), que se muestra cuando se abre la aplicación por primera vez. Puedes hacer esto en el método main() de tu aplicación. En este ejemplo, la pantalla de inicio es la PantallaInicio:
dart
Copy code
void main() {
runApp(MaterialApp(
title: 'Navegación entre pantallas',
home: PantallaInicio(),
));
}
Cuando un usuario navega hacia una nueva pantalla en tu aplicación, la pantalla anterior se apila en la pila de rutas. Para regresar a la pantalla anterior, puedes utilizar el método Navigator.pop(). Si quieres navegar a una pantalla en particular de la pila de rutas, puedes utilizar el método Navigator.pushNamed() o Navigator.pushReplacementNamed(), y definir una ruta para cada pantalla en la propiedad routes de tu MaterialApp.
Este es un ejemplo básico de cómo navegar entre pantallas en Flutter utilizando el widget Navigator. Ten en cuenta que existen otras formas de realizar la navegación, como utilizando el paquete flutter_bloc o GetX, que pueden simplificar aún más este proceso.





}