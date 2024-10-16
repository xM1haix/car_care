import 'package:car_care_flutter/widgets/theme_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Car Care"),
        actions: [ThemeButton()],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "List of your cars",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
              ),
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(9),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Color(0xFF121212),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "PLATE NUMBER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
