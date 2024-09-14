import 'package:flutter/material.dart';
import 'package:namer_app/flutter-flutterando/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
//  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
       //   mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            CustomSwitch(),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDartTheme, 
          onChanged: (value){
            AppController.instance.changeTheme();
        },);
  }
}
//return Container
// child: Center(
//           child: GestureDetector(
//           child: Text('Contador: $counter'),
//           onTap: () {
//           setState(() {
//             counter++;
//           });
//         },
//       )),



// return Center(
//           child: GestureDetector(
//           child: Text('Contador: $counter', style: TextStyle(fontSize: 20)),
//           onTap: () {
//           setState(() {
//             counter++;
//           });
//         },
//       )),



// Container(
//         height: 50,
//         width: 50,
//         color: Colors.black,
        
//         child: Align(
//           alignment: Alignment.center,
//             height: 50,
//             width: 50,
//             color: Colors.red,
//         ),
//       )


// body: Center(
//         child: CustomSwitch(),
//       )