import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepali Dal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
        scaffoldBackgroundColor: Colors.black,
        //useMaterial3: true, // This line seems to be causing an error, so I've commented it out
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/Images/Logo/logo.png'),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Home',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Text(
              'Menu',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Text(
              'Chef',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Text(
              'Reservation',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Text(
              'About Us',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        width: 1400,
                        color: Colors.red,
                        child: Image.asset(
                          'assets/Images/Backgrounds/Restaurent.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        height: 425,
                        child: Container(
                          margin: const EdgeInsets.only(left: 70, top: 30),
                          child: Card(
                            color: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    'Todays Special',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Teko',
                                      fontSize: 55,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 35, left: 60),
                                  child: Text(
                                    'KODO KO DHIDO\nwith\nFISH FRY\n',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Handlee',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10, left: 150),
                                  child: Text(
                                    'made with\noriginally grown kodo\nall the way from Dalekh\n'
                                        'and Fish from Karnali river',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Handlee',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 60),
                                  child: Row(
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          // Add your button press logic here
                                        },
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(100), // Adjust the border radius as desired
                                          ),
                                          side: const BorderSide(width: 1, color: Colors.white), // Border color and width
                                          textStyle: const TextStyle(color: Colors.white), // Button text color
                                        ),
                                        child: const Text(
                                          'Order Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 70),
                                      OutlinedButton(
                                        onPressed: () {
                                          // Add your button press logic here
                                        },
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(100), // Adjust the border radius as desired
                                          ),
                                          side: const BorderSide(width: 1, color: Colors.white), // Border color and width
                                          textStyle: const TextStyle(color: Colors.white), // Button text color
                                        ),
                                        child: const Text(
                                          'Make Reservaton',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 320,
                        child: Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2.0,
                              color: Colors.white,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Images/Food/Dhido.jpg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 1400,
                    color: Colors.blue,
                    child: Image.asset(
                      'assets/Images/Backgrounds/bar.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 1400,
                    color: Colors.green,
                    child: Image.asset(
                      'assets/Images/Backgrounds/pool.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 1400,
                    color: Colors.yellow,
                    child: Image.asset(
                      'assets/Images/Backgrounds/Rooftop.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    height: 160,
                    child: Column(
                      children: [
                        Image.asset('assets/Images/Icons/breakfast.png',
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 8), // Add some spacing between the image and text
                        const Text(
                          'Breakfast',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 400,
                  ),
                  SizedBox(
                    width: 90,
                    height: 160,
                    child: Column(
                      children: [
                        Image.asset('assets/Images/Icons/Launch.png',
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 8), // Add some spacing between the image and text
                        const Text(
                          'Launch',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 400,
                  ),
                  SizedBox(
                    width: 90,
                    height: 160,
                    child: Column(
                      children: [
                        Image.asset('assets/Images/Icons/Dinner.png',
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 8), // Add some spacing between the image and text
                        const Text(
                          'Dinner',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
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
