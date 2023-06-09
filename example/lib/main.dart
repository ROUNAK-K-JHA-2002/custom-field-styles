import 'package:custom_field_styles/custom_field_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Modern Text Field",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: controller,
              fieldStyle: FieldStyle.modern,
              prefixIcon: const Icon(Icons.person_2),
              suffixIcon: const Icon(Icons.cancel),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Gradient  Button Field",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtons(
              onTap: () {
                debugPrint("Hello , Button Pressed");
              },
              buttonStyle: CustomStyle.gradient,
              firstGradientColor: Colors.purple,
              secondGradientColor: Colors.pink,
              enableShadow: true,
              child: const Text(
                "Button",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
