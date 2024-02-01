import 'package:flutter/material.dart';

class SubscribersTile2 extends StatefulWidget {
  final List<String> list;
  final String id;
  const SubscribersTile2({super.key, required this.list, required this.id});

  @override
  State<SubscribersTile2> createState() => _SubscribersTile2State();
}

class _SubscribersTile2State extends State<SubscribersTile2> {
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;

    const title = 'Dismissing Items';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          color: Colors.red,
          height: screenHeight,
          width: 100,
          child: ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              final item = widget.list[index];
              return Dismissible(
                // Each Dismissible must contain a Key. Keys allow Flutter to
                // uniquely identify widgets.
                key: Key(item),
                // Provide a function that tells the app
                // what to do after an item has been swiped away.
                onDismissed: (direction) {
                  // Remove the item from the data source.
                  setState(() {
                    widget.list.removeAt(index);
                  });
                  // Then show a snackbar.
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      SnackBar(content: Text('$item dismissed'))
                  );
                },
                // Show a red background as the item is swiped away.
                // background: Container(color: Colors.red),
                child: ListTile(
                  title: Text(item),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
