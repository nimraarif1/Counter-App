import 'package:flutter/material.dart';
import 'package:my_app/UI/screens/counter_view_model.dart';
import 'package:my_app/core/constants/color.dart';
import 'package:provider/provider.dart';

import 'counter_view_model.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);
  
  get bg => null;

  @override
  Widget build(BuildContext context) {
    return  
      
       Consumer<CounterProvider>(
        builder: (context,model,child){
            return Scaffold(
          backgroundColor:colors[model.backgroundColor],
          appBar: AppBar(
           
            title: Text('My counter App'),
          ),
          body: Center(
            child: Consumer<CounterProvider>(
              
              builder: (context, model, child) {
                return Text(
                  '${model.i}',
              
                  style: TextStyle(
                    fontSize: 40,
                  ),
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.increment();
              },
              child: Icon(Icons.add),
            ),
             );
        },
       
       );
    
  }
}
