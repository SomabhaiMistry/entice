import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [

              RaisedButton(
                child: const Text('Show toast'),
                onPressed: () => _showToast(context),
              ),
            ],
          )
        ),
      ),
    );
  }
  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favourite'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed:scaffold.hideCurrentSnackBar,
        ),
      ),
    );
  }
}
