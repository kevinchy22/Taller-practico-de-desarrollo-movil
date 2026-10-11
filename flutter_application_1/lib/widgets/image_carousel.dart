import 'package:flutter/material.dart';

// Carrusel horizontal
class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: const [
          _GenreCard(name: 'IN FRAGANTI (LA IA EN LA ACTUALIDAD...', color: Colors.black, icon: Icons.videocam_rounded ),
          _GenreCard(name: 'Cosas que Contar', color: Colors.black, icon: Icons.videocam_rounded),
          _GenreCard(name: 'UN PEQUEÑO SUEÑO', color: Colors.black, icon: Icons.videocam_rounded),
          _GenreCard(name: 'Johan Comiendo', color: Colors.black, icon: Icons.videocam_rounded),
          _GenreCard(name: 'IN FRAGANTI', color: Colors.black, icon: Icons.videocam_rounded),
        ],
      ),
    );
  }
}

class _GenreCard extends StatelessWidget {
  final String name;
  final Color color;
  final IconData icon;

  const _GenreCard({
    required this.name,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.white),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}