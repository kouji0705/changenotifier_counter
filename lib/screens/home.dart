import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';
import '../widgets/custom_button.dart'; // CustomButtonをインポート

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter: ${counterProvider.counter}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterProvider.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            label: 'Increment',
            onPressed: counterProvider.increment,
          ),
          SizedBox(width: 10), // ボタン間のスペース
          CustomButton(
            label: 'Decrement',
            onPressed: counterProvider.decrement,
          ),
        ],
      ),
    );
  }
}
