import 'package:flutter/material.dart';
import 'package:my_money/controllers/budget_controller.dart';
import 'package:my_money/controllers/home_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => resetData(context),
        child: const Icon(Icons.cleaning_services_rounded),
      ),
      body: Column(
        children: [
          // Body
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.15,
              top: MediaQuery.of(context).size.height * 0.1,
              right: MediaQuery.of(context).size.width * 0.15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Widget mamalon de porcentaje en circulo"),
                SizedBox(height: 160),
                ElevatedButton(
                    onPressed: () => resetData(context),
                    child: const Text("Eliminar presupuesto y datos"),
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                Text("Presupuesto: ${moneyProvider.balance.toString()} \$", style: TextStyle(fontSize: 25)),
                Text("Balance: ${moneyProvider.balance.toString()} \$", style: TextStyle(fontSize: 25)),
                Text("Gastos: ${moneyProvider.expenses.toString()} \$", style: TextStyle(fontSize: 25)),
                SizedBox(height: 50),
                Text("Filtrar gastos por:"),
                SizedBox(height: 50),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.34,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Hoy"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Esta semana"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este mes"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                        ElevatedButton(
                            onPressed: () => resetData(context),
                            child: const Text("Este año"),
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.redAccent)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
