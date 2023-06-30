// import 'package:flutter/material.dart';

// class Rotated extends StatefulWidget {
//   const Rotated({super.key});

//   @override
//   State<Rotated> createState() => _RotatedState();
// }

// class _RotatedState extends State<Rotated> with TickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(seconds: 2),
//       vsync: this,
//     );
//     _animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: AnimatedContainer(
//           duration: _controller.duration,
//           curve: _animation.curve,
//           width: _animation.value * 100,
//           height: _animation.value * 100,
//           child: FlutterLogo(
//             size: 100,
//           ),
//         ),
//       ),
//     );
//   }
// }
