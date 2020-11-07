// import "package:flutter/material.dart";

// class Submit extends StatelessWidget {
//   final String name, sets, rep, pmg, smg;

//   const Submit({
//     Key key,
//     this.name = "",
//     this.sets = "",
//     this.rep = "",
//     this.pmg = "",
//     this.smg = "",
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Create Workouts'),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: 400,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Exercise Name :',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     '${name}',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Primary Muscle Group :',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     '${pmg}',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Secondary Muscle Group :',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     '${smg}',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Reps :',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     '${rep}',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Sets :',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     '${sets}',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
