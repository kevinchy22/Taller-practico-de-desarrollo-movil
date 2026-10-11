import 'package:flutter/material.dart';

// Publicación estilo red social. Recibe los datos por parámetros.
class PostCard extends StatefulWidget {
  final String userName;
  final String avatarUrl;
  final String imageUrl;
  final String description;

  const PostCard({
    super.key,
    required this.userName,
    required this.avatarUrl,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false; // indicador de me gusta

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.white, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    widget.avatarUrl,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Imagen principal
          Image.network(
            widget.imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              height: 200,
              color: Colors.deepPurple.shade100,
              child: const Center(child: Icon(Icons.music_note, size: 60)),
            ),
          ),
          // Descripción
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Text('Retorno de la historia...',
            style: const TextStyle(color: Colors.white)
            ),
          ),
          // Me gusta y comentarios
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _liked ? Icons.favorite : Icons.favorite_border,
                  color:  Colors.white ,
                ),
                onPressed: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment_outlined, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
