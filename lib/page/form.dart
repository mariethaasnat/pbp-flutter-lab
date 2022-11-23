import 'package:counter_7/main.dart';
import 'package:counter_7/page/budget_data.dart';
import 'package:counter_7/widget/navigation.dart';
import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class Budget {
  String judul = "";
  int nominal = 0;
  String jenis = "Pilih Jenis";
  static List<Budget> listBudget = [];

  Budget(String this.judul, int this.nominal, String this.jenis);
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String? _jenisPemasukan;
  List<String> _listPemasukan = ['Pemasukan', 'Pengeluaran'];

  bool _isNumeric(String? x) {
    if (x == null) {
      return false;
    }
    return double.tryParse(x) != null;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ), // Menambahkan drawer menu

      drawer: const navigation(),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Untuk input judul
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Beli Sate Pacil",
                      labelText: "Judul",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                // Untuk input nominal
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Contoh: 15000",
                      labelText: "Nominal",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        if (_isNumeric(value)) {
                          _nominal = int.parse(value!);
                        }
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        if (_isNumeric(value)) {
                          _nominal = int.parse(value!);
                        }
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      } else if (!_isNumeric(value)) {
                        return 'Nominal harus berupa bilangan bulat';
                      }
                      return null;
                    },
                  ),
                ),
                // Dropdown jenis budget
                Container(
                  width: width / 4,
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButtonFormField(
                      hint: const Text("Pilih Jenis"),
                      value: _jenisPemasukan,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: _listPemasukan.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _jenisPemasukan = newValue!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Silahkan Pilih Jenis!';
                        }
                        return null;
                      },
                    ),
                  ),
                ),

                SizedBox(
                  height: height / 1.9,
                ),
                // Button untuk submit
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Budget budgetRightNow =
                      Budget(_judul, _nominal, _jenisPemasukan!);
                      Budget.listBudget.add(budgetRightNow);
                      _formKey.currentState?.reset();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            insetPadding: const EdgeInsets.all(10),
                            elevation: 15,
                            child: ListView(
                              padding:
                              const EdgeInsets.only(top: 20, bottom: 20),
                              shrinkWrap: true,
                              children: const <Widget>[
                                Center(
                                    child: Text('Budget baru berhasil ditambahkan')),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}