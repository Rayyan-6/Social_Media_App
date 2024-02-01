import 'package:flutter/material.dart';

// class NotificationsTile extends StatefulWidget {
//   final String title;
//   final String subtitle;
//   final String imgurl;
//
//   NotificationsTile({super.key, required this.title, required this.subtitle, required this.imgurl});
//
//   @override
//   State<NotificationsTile> createState() => _NotificationsTileState();
// }
//
// class _NotificationsTileState extends State<NotificationsTile> {
//   Color tileColor= Colors.pinkAccent;
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: UniqueKey(),
//       background: Container(
//         color: Colors.red, // Background color when swiping
//         child: Icon(Icons.delete, color: Colors.white),
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.only(right: 20.0),
//       ),
//       onDismissed: (DismissDirection direction) {
//         // Handle tile dismissal
//         print('Tile dismissed');
//       },
//
//         child: GestureDetector(
//           onTap: (){
//             setState(() {
//               tileColor= Colors.white;
//             });
//           },
//           child: ListTile(
//             tileColor: tileColor,
//             title: Text(widget.title),
//             subtitle: Text(widget.subtitle),
//             leading: CircleAvatar(
//               child:
//               ClipOval(
//                 child: Image(
//                   image: AssetImage(widget.imgurl),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             onTap: () {
//               // Handle tile tap
//               print('Tapped on Tile');
//             },
//           ),
//         ),
//
//     );
//   }
// }



class NotificationsTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imgurl;

  NotificationsTile({Key? key, required this.title, required this.subtitle, required this.imgurl}) : super(key: key);

  @override
  State<NotificationsTile> createState() => _NotificationsTileState();
}

class _NotificationsTileState extends State<NotificationsTile> {
  Color tileColor = Colors.pinkAccent.shade100;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tileColor = Colors.white;
        });
      },
      child: Dismissible(
        // key: UniqueKey(),
        key: ValueKey(widget.title),
        background: Container(
          color: Colors.red, // Background color when swiping
          child: Icon(Icons.delete, color: Colors.white),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20.0),
        ),
        onDismissed: (DismissDirection direction) {
          // Handle tile dismissal
          print('Tile dismissed');
        },
        child: ListTile(
            tileColor: tileColor,
            title: Text(widget.title),
            subtitle: Text(widget.subtitle),
            leading: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage(widget.imgurl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            onTap: () {
              // Handle tile tap
              print('Tapped on Tile');
            },
          ),
      ),
    );
  }
}














