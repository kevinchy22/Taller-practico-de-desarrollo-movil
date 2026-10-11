import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PromotionalBanner(
          title: 'Ejemplo',
          description: 'NO',
          icon: Icons.album,
          backgroundColor: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            'Videos Top de Top',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ImageCarousel(),
        SizedBox(height: 8),
        PostCard(
          userName: 'Tonto Brutos',
          avatarUrl: 'https://yt3.googleusercontent.com/JcNhypx5-BEiQfXe_8nSz-wtrfuPRNsxrbbJlNmV4vM3GccS4LCXKW7ULHXWHBvkgUQ9ZA-j-5Y=s160-c-k-c0x00ffffff-no-rj',
          imageUrl: 'https://i.ytimg.com/an_webp/9Q5s9eeRmh0/mqdefault_6s.webp?du=3000&sqp=CL6yr9YG&rs=AOn4CLBwVDykgFnVr0516uD6fROnEEy9iA',
          description: 'Retorno de la historia...',
        ),
        PostCard(
          userName: 'Tonto Brutos',
          avatarUrl: 'https://yt3.googleusercontent.com/JcNhypx5-BEiQfXe_8nSz-wtrfuPRNsxrbbJlNmV4vM3GccS4LCXKW7ULHXWHBvkgUQ9ZA-j-5Y=s160-c-k-c0x00ffffff-no-rj',
          imageUrl: 'https://i.ytimg.com/an_webp/9Q5s9eeRmh0/mqdefault_6s.webp?du=3000&sqp=CL6yr9YG&rs=AOn4CLBwVDykgFnVr0516uD6fROnEEy9iA',
          description: 'Retorno de la historia...',
        ),
      ],
    );
  }
}