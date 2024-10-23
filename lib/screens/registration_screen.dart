import 'package:flutter/material.dart'; // Імпортує бібліотеку Material для використання компонентів Material Design.

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
// Створює StatefulWidget, який дозволяє екрану реєстрації зберігати стан та оновлюватися при зміні введених даних.
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Встановлює білий фон для всього екрану.
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0), // Додає відступи зліва та справа по 24 пікселі.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Вирівнює дітей колонки по вертикалі по центру.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Розтягує дітей колонки по ширині контейнера.
          children: <Widget>[
            Container(
              height: 200.0, // Встановлює висоту контейнера з логотипом.
              child: Image.asset('images/logo.png'), // Показує зображення логотипу з папки 'images'.
            ),
            SizedBox(
              height: 48.0, // Додає простір висотою 48 пікселів між логотипом та полем введення.
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
                // Зберігає або обробляє введене користувачем значення (наприклад, зберігає email).
              },
              decoration: InputDecoration(
                hintText: 'Enter your email', // Підказка для користувача, що слід ввести електронну пошту.
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // Внутрішній відступ текстового поля.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)), // Округлість границі поля.
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0), // Колір та товщина границі у звичайному стані.
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0), // Колір та товщина границі при фокусі.
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 8.0, // Додає простір висотою 8 пікселів між полями введення.
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
                // Зберігає або обробляє введене користувачем значення (наприклад, зберігає пароль).
              },
              decoration: InputDecoration(
                hintText: 'Enter your password', // Підказка для користувача, що слід ввести пароль.
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 24.0, // Додає простір висотою 24 пікселі між полем введення пароля та кнопкою реєстрації.
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0), // Відступи зверху та знизу для кнопки.
              child: Material(
                color: Colors.blueAccent, // Колір фону кнопки.
                borderRadius: BorderRadius.all(Radius.circular(30.0)), // Округлі кути кнопки.
                elevation: 5.0, // Ефект тіні, що створює візуальне підняття кнопки.
                child: MaterialButton(
                  onPressed: () {
                    //Implement registration functionality.
                    // Тут виконується дія при натисканні на кнопку, наприклад, реєстрація користувача.
                  },
                  minWidth: 200.0, // Мінімальна ширина кнопки.
                  height: 42.0, // Висота кнопки.
                  child: Text(
                    'Register', // Текст, що відображається на кнопці.
                    style: TextStyle(color: Colors.white), // Колір тексту кнопки.
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
