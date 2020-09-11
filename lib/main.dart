import 'package:flutter/material.dart';
import 'package:personal_expenses/transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        id: 't1', name: 'New Shoes', date: DateTime.now(), price: 69.99),
    Transactions(id: 't2', name: 'Grocery', date: DateTime.now(), price: 99.99),
    Transactions(id: 't3', name: 'Grocery', date: DateTime.now(), price: 99.99),
    Transactions(id: 't4', name: 'Grocery', date: DateTime.now(), price: 99.99),
    Transactions(id: 't2', name: 'Grocery', date: DateTime.now(), price: 99.99),
    Transactions(id: 't2', name: 'C', date: DateTime.now(), price: 99.99),
    Transactions(id: 't2', name: 'B', date: DateTime.now(), price: 99.99),
    Transactions(id: 't2', name: 'A', date: DateTime.now(), price: 99.99),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
            child: ListView(
          children: [
            Container(
              color: Colors.white,
              width: 100,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text('0'), Text('S')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text('0')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text('0')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text('0')],
                  ),
                ],
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: ListTile(
                    leading: Container(
                      height: 50.0,
                      width: 50.0,
                      child: Center(
                          child: Text(
                        '${tx.price}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple,
                      ),
                    ),
                    title: Text(tx.name),
                    subtitle: Text('${tx.date.toString()}', style: TextStyle(color: Colors.grey),),
                    trailing: Icon(Icons.more_vert),
                  ),
                );
              }).toList(),
            ),
          ],
        )),
      ),
    );
  }
}
