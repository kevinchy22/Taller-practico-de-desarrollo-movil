import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(
          name: 'Anita la Huerfanita',
          lastMessage: 'y zi',
          time: 'Ayer',
          avatarUrl: 'https://i.pinimg.com/236x/25/9e/5b/259e5bdb48a2fd72657ae8bfcf8b5c32.jpg',
          unread: 2,
        ),
        ChatTile(
          name: 'Jefecito',
          lastMessage: 'Alguien me puede ayudar a hacerlo?.',
          time: '09:35',
          avatarUrl: 'https://i.pinimg.com/736x/40/9c/77/409c77bdc9698effb028f8a9d5bf0698.jpg',
          unread: 1,
        ),
        ChatTile(
          name: 'Manu Manito',
          lastMessage: 'Esta larga esa mierds?',
          time: '09:40',
          avatarUrl: 'https://i.pinimg.com/originals/f6/2f/bf/f62fbfd4414ad1a7653c30660a93f483.jpg',
        ),
        ChatTile(
          name: 'Gegi',
          lastMessage: ':0 Que bonitaaaaa',
          time: 'Ayer',
          avatarUrl: 'https://i2.ruliweb.com/img/26/03/23/19d183b76e94cc7b8.webp',
          unread: 5,
        ),
        ChatTile(
          name: 'Jesus',
          lastMessage: 'Asi que etsoy en las mismas',
          time: '09:59',
          avatarUrl: 'https://static.wikia.nocookie.net/unofficial-alphabet-lore/images/3/31/JNew.png/revision/latest?cb=20250320095224',
        ),
        ChatTile(
          name: 'Juan',
          lastMessage: 'Y luego disque sustentacion',
          time: '09:34',
          avatarUrl: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRSYXkD7dQt2T4myQ9gWXXf8ebxzsWU-jqkhALpk3XCacJClrou',
        ),
      ],
    );
  }
}