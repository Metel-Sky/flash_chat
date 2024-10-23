import 'package:flutter/material.dart'; // Імпорт бібліотеки Material для використання віджетів та стилів.

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
// Створення об'єкта стану (_WelcomeScreenState), який буде керувати станом WelcomeScreen.
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Задає білий фон для екрану.
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0), // Додає відступи зліва та справа по 24 пікселі.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Вирівнює дітей колонки по вертикалі по центру.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Розтягує дітей колонки по горизонталі на всю ширину.
          children: <Widget>[
            Row( // Використовується для розміщення логотипу та тексту поруч один з одним.
              children: <Widget>[
                Container(
                  child: Image.asset('images/logo.png'), // Показує зображення логотипу з локальної папки.
                  height: 60, // Встановлює висоту контейнера з логотипом.
                ),
                Text(
                  'Flash chat', // Текстова назва додатку.
                  style: TextStyle(
                    fontSize: 45, // Розмір тексту.
                    fontWeight: FontWeight.w900, // Жирний стиль шрифту.
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48, // Додає порожній простір висотою 48 пікселів між логотипом та кнопкою.
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16), // Додає вертикальні відступи по 16 пікселів.
              child: Material(
                elevation: 5.0, // Створює ефект тіні, що піднімає кнопку над фоном.
                color: Colors.lightBlueAccent, // Задає колір фону кнопки.
                borderRadius: BorderRadius.circular(30.0), // Задає округлі кути з радіусом 30 пікселів.
                child: MaterialButton(
                  onPressed: () {
                    //Go to loginscreen.
                    // Дія, яка виконується при натисканні кнопки (наприклад, перехід на екран входу).
                  },
                  minWidth: 200, // Мінімальна ширина кнопки.
                  height: 42, // Висота кнопки.
                  child: Text('Log In'), // Текст на кнопці.
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0), // Додає вертикальні відступи по 16 пікселів.
              child: Material(
                color: Colors.blueAccent, // Задає колір фону для другої кнопки.
                borderRadius: BorderRadius.circular(30.0), // Округлі кути для кнопки.
                elevation: 5, // Ефект тіні для кнопки.
                child: MaterialButton(
                  onPressed: () {
                    //Go to register screen.
                    // Дія, яка виконується при натисканні кнопки (наприклад, перехід на екран реєстрації).
                  },
                  minWidth: 200, // Мінімальна ширина кнопки.
                  height: 42, // Висота кнопки.
                  child: Text('Register'), // Текст на кнопці.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
