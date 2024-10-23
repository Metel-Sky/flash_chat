import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
//import 'package:flash_chat/screens/chat_screen.dart';

// Це точка входу в додаток.
// Функція main() запускає додаток FlashChat.
void main() => runApp(FlashChat());

// Клас FlashChat - це "каркас" нашого додатка.
// StatelessWidget означає, що цей екран не змінює свій стан (не змінюється з часом).
class FlashChat extends StatelessWidget {
  // Конструктор класу FlashChat, який може приймати ключ (key).
  const FlashChat({super.key});

  // Метод build відповідає за створення екрану.
  // Він будує (відображає) те, що ми бачимо на екрані.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Налаштування теми для всього додатка.
      // Тут використовується темна тема (ThemeData.dark()).
      theme: ThemeData.dark().copyWith(
        // Зміна кольору тексту за замовчуванням для теми.
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.black54),
        ),
      ),
      // home вказує, який екран буде першим, коли ми запускаємо додаток.
      // Тут першим екраном буде WelcomeScreen.
      home: WelcomeScreen(),
    ); //1
  }
}
