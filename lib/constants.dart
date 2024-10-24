import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent, // Колір тексту - світло-синій.
  fontWeight: FontWeight.bold,   // Текст буде жирним.
  fontSize: 22,                  // Розмір шрифту - 18.
);

const kMassageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Відступи всередині текстового поля.
  hintText: 'Tape your massege here...', // Текст-підказка, який з'являється, коли поле пусте.
  border: InputBorder.none,               // Поле без видимої рамки.
);

const kMassageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0), // Верхня межа з світло-синім кольором і шириною 2 пікселі.
  ),
);
