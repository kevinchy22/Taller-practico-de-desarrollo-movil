import 'package:flutter/material.dart';

class PromotionalBanner extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color backgroundColor;

  const PromotionalBanner({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage('https://yt3.googleusercontent.com/JcNhypx5-BEiQfXe_8nSz-wtrfuPRNsxrbbJlNmV4vM3GccS4LCXKW7ULHXWHBvkgUQ9ZA-j-5Y=s160-c-k-c0x00ffffff-no-rj',),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tontobrutos Corp',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Un grupo de babosos que intenta ganarse el pan de cada dia mediante estupideces',
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Suscribirse',),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
