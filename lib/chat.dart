import 'package:chatpp/widgets/chat_messages.dart';
import 'package:chatpp/widgets/new_messages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('UniBlind'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.exit_to_app,
                  color: Theme.of(context).colorScheme.primary)
              )
        ],
      ),
      body: const Column(
        children:  [
          Expanded(
            child: 
            ChatMessages()
            ),
          NewMessage(),
        ],
      ),
      );
  }
}
