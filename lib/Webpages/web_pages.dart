import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
        title: const Text(
          'FASU GAME',
          style: TextStyle(
            color: Color.fromRGBO(128, 0, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              'assets/images/fasu_logo-removebg-preview.png',
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: (){

                    },
                    icon: const Icon(
                      Icons.list
                    )
                ),
                IconButton(
                    onPressed: (){

                    },
                    icon: const Icon(
                        Icons.list
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
