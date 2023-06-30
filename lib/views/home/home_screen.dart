import 'dart:developer';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChanged = false;
  double size = 300;
  @override
  Widget build(BuildContext context) {
    final mySize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: isChanged ? Colors.black : Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => Rotated(),
                //   ),
                // );
              },
              icon: const Icon(Icons.navigate_next_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              decoration: BoxDecoration(
                image: isChanged
                    ? DecorationImage(
                        image: Image.network(
                                "https://static.scientificamerican.com/sciam/cache/file/2B38DE31-C1D3-4339-8808D61972976EE4_source.jpg")
                            .image,
                        fit: BoxFit.cover)
                    : null,
                borderRadius: isChanged ? BorderRadius.circular(20) : null,
                color: isChanged ? Colors.red : Colors.greenAccent,
              ),
              width: isChanged ? mySize - (mySize / 3) : mySize - 200,
              height: isChanged ? 200 : 400,
            ),
            TextButton(
                // onHover: (bool value) {
                //   setState(() {
                //     isChanged = value;
                //   });
                // },
                onPressed: () {
                  setState(() {
                    isChanged = !isChanged;
                    log("${mySize / 3}");
                  });
                },
                child: const Text("Change"))
          ],
        ),
      ),
    );
  }
}
