// un provider es una clase que nos permite compartir
// información entre widgets y acualizar de forma
// reactiva los widgets que esten escuchando los
// cambios de la información
import 'package:flutter/foundation.dart';

class MoneyProvider with ChangeNotifier {
  int budget = 0;
  int balance = 0;
  int expenses = 0;
}
