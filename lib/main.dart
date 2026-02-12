import 'package:flutter/material.dart';

void main() => runApp(const AppFloreria());

class AppFloreria extends StatelessWidget {
  const AppFloreria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Floreria',
      home: Flores(),
    );
  }
} // Fin clase appFloreria

class Flores extends StatelessWidget {
  const Flores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Floreria Silva - 2,3 flores - 6º J',
          style: TextStyle(color: Color.fromARGB(255, 182, 235, 195)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 58, 116, 75), // Lila pastel
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.local_florist,
              color: Color.fromARGB(255, 182, 235, 195),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.auto_awesome_outlined,
              color: Color.fromARGB(255, 182, 235, 195),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 4, // Definimos los 4 elementos
        itemBuilder: (context, index) {
          // Definimos los datos de cada elemento según su posición (index)
          List<String> titulos = [
            'Tulipanes',
            'Rosas',
            'Girasoles',
            'Amapolas',
          ];
          List<String> subtitulos = [
            'Elegantes y Sencillos',
            'Para cualquier ocasion',
            'Dale luz a su vida',
            'Amor de sobra',
          ];
          List<IconData> iconos = [
            Icons.favorite,
            Icons.card_giftcard,
            Icons.sunny,
            Icons.star,
          ];
          List<Color> colores = [
            const Color.fromARGB(255, 241, 116, 116),
            const Color.fromARGB(255, 238, 121, 199),
            const Color.fromARGB(255, 142, 140, 221),
            const Color.fromARGB(255, 243, 199, 134),
          ];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              leading: CircleAvatar(
                backgroundColor: colores[index].withOpacity(0.2), // Fondo suave
                child: Icon(iconos[index], color: colores[index]),
              ),
              title: Text(
                titulos[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(subtitulos[index]),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: const Color.fromARGB(255, 172, 192, 163),
              ),
              onTap: () {
                // Acción funcional: Muestra un mensaje al tocar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Abriendo ${titulos[index]}...'),
                    backgroundColor: colores[index],
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
