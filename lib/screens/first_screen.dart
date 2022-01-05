import 'package:flutter/material.dart';
import 'package:flutter_internship/providers/counter_provider.dart';
import 'package:provider/provider.dart';
class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Counter App ${context.watch<Counter>().count}"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this mainy times ${context.watch<Counter>().count}"

            ),
            Count(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
            }, child: Text("Next screen"),
            style: ElevatedButton.styleFrom(primary: Colors.redAccent),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add,
          color: Colors.white,),
        onPressed: ()=>context.read<Counter>().increment(),
      ),

    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<Counter>().count}',
    key: Key('counterstate'),style: Theme.of(context).textTheme.headline4,);
  }
}
