import 'package:flutter/material.dart';
import 'package:my_app/UI/screens/counter_view.dart';
import 'package:my_app/UI/screens/counter_view_model.dart';
import 'package:provider/provider.dart';

import 'UI/screens/counter_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
     create: (context) => CounterProvider(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            
            // primarySwatch: Colors.blue,
          ),
          home:CounterApp(),
        ),
    );
    
  }
}


