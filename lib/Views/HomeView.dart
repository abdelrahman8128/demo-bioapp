import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sahha Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  const SizedBox(height: 20),
                  ElevatedButton.icon(

                    icon: const Icon(
                      Icons.query_stats,
                      size: 32,
                    ),
                    label: const Text('Scores'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/scores');
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.psychology,
                      size: 32,
                    ),
                    label: const Text('Insights'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/web');
                    },
                  ),
                ]),
          ),
        ));
  }
}
