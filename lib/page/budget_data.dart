import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/widget/navigation.dart';
import 'package:flutter/material.dart';

class MyDataBudgetPage extends StatefulWidget {
  const MyDataBudgetPage({super.key});

  @override
  State<MyDataBudgetPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ), // Menambahkan drawer menu

      drawer: const navigation(),

      body: Center(
        child: ListView.builder(
            itemCount: Budget.listBudget.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text Judul
                    Container(
                      padding: const EdgeInsets.only(
                          top: 8, left: 15, right: 15, bottom: 8),
                      child: Text(
                        Budget.listBudget[index].judul,
                        style: const TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          child: Text(
                            Budget.listBudget[index].nominal.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          child: Text(
                            Budget.listBudget[index].jenis,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}