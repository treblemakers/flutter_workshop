import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class ExampleRoute extends StatefulWidget {
  const ExampleRoute({super.key});

  @override
  State<ExampleRoute> createState() => _ExampleRouteState();
}

class _ExampleRouteState extends State<ExampleRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Example",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('1'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text('1'),
            ),
            TextButton(
              onPressed: () {
                print('click!!!');
              },
              child: Text('Text button'),
            ),
            ElevatedButton(
              onPressed: () {
                print('click ElevatedButton!!!');
              },
              child: Text("Button"),
            ),
            OutlinedButton(
              onPressed: () {
                print('click OutlinedButton!!!');
              },
              child: Text("Outlined button"),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(40)
                ),
                hintText: 'Enter a search term',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
    );
  }
}
