import 'package:flutter/material.dart'; // Імпортує бібліотеку для використання Material Design компонентів.
import 'package:flash_chat/constants.dart'; // Імпортує файл з константами (наприклад, стилі, оформлення).

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
// Створює StatefulWidget, щоб зберігати стан чату, наприклад, введений текст.
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null, // Відсутність іконки зліва.
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.close), // Іконка "закрити".
              onPressed: () {
                //Implement logout functionality
                // Дія, яка виконується при натисканні на кнопку (наприклад, вихід з облікового запису).
              }),
        ],
        title: const Text('⚡️Chat'), // Заголовок, що відображається в верхній панелі додатку.
        backgroundColor: Colors.lightBlueAccent, // Колір фону AppBar.
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Розташовує елементи у верхній та нижній частині екрану.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Розтягує елементи по ширині контейнера.
          children: <Widget>[
            Container(
              decoration: kMassageContainerDecoration, // Використовує стиль для контейнера з констант (наприклад, обведення).
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Центрує елементи вертикально в контейнері.
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                        // Обробляє введений текст (наприклад, зберігає введене повідомлення).
                      },
                      decoration: kMassageTextFieldDecoration, // Стиль текстового поля, який зберігається в константах.
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Implement send functionality.
                      // Дія, яка виконується при натисканні на кнопку "Send" (наприклад, відправка повідомлення).
                    },
                    child: const Text(
                      'Send', // Текст на кнопці відправки.
                      style: kSendButtonTextStyle, // Стиль тексту кнопки, що зберігається в константах.
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
