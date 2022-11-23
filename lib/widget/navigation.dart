import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/budget_data.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:flutter/material.dart';

class navigation extends StatelessWidget {
  const navigation ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman data
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDataBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              // Route menu ke halaman data
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchListPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}