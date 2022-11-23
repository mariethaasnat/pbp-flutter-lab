# README PBP Lab Flutter
Nama : Marietha Asnat Nauli Sitompul <br />
NPM : 2106752413 <br />
Kelas : PBP - B <br />
Kode Asdos : BI <br />

⭐ [Tugas 7 - Elemen Dasar Flutter](#tugas-7---elemen-dasar-flutter) </br>
⭐ [Tugas 8 - Flutter Form](#tugas-8---flutter-form) </br>
⭐ [Tugas 9 - Integrasi Web Service pada Flutter](#tugas-9---integrasi-web-service-pada-flutter) </br>

# Tugas 7 - Elemen Dasar Flutter
## _Stateless Widget_, _Stateful Widget_, dan Perbedaannya
#### Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.
**_Widget_** <br />
Representasi visual dari bagian – bagian aplikasi dan menangani perilakunya sendiri dimana _widget_ disatukan untuk menyusun _User Interface_ suatu aplikasi. _Widget_ dapat dibagi menjadi _button or text widgets_, _padding widget_, _theme widget_, dan _gesture detector widget_. <br />

**_State_** <br />
Data atau informasi yang dapat dibaca secara sinronus saat _widget_ tersebut dibuat dan digunakan oleh aplikasi tersebut. <br />

**_Stateless Widget_** <br />
_Widget_ yang tidak memiliki _state_ dan tidak berubah dengan sendirinya melalui _action_ atau _behavior internal_, dalam kata lain, widget tersebut berubah melalui _external events_ pada _parent widget_ dalam _widgets tree_. _Child widget_ akan menerima informasi dari _parent widget_ dan tidak akan berubah dengan sendirinya. _Stateless Widget_ hanya memiliki properti akhir yang ditentukan selama konstruksi dan properti akhir atau _final properties_ merupakan satu – satunya hal yang perlu dibangun pada _device screen_. _Widget_ ini tidak dapat berubah dan tidak akan pernah dapat berubah, contohnya adalah _icon_, _iconbutton_, dan _text_. <br />

**_Stateful Widget_** <br />
_Widget_ yang datanya dapat diubah secara _external_ dan akan dirender ulang saat input data atau _local state_ nya berubah. _Widget_ ini mengubah informasi dan deskripsinya secara dinamis selama _lifetimes widget_ tersebut. _Stateful widget_ bersifat tidak dapat diubah atau _immutable_, tetapi memiliki _company state class_ yang merepresentasikan status _state widget_ saat ini. _Widget_ ini dapat berubah saat _user_ berinteraksi dengan _widget_ tersebut, contohnya adalah _checkbox_, _radio_, _slider_, _form_, _textfield_. <br />

**Perbedaan _Stateless Widget_ dan _Stateful Widget_** <br />
| _Stateless Widget_ | _Stateful Widget_ |
| --- | --- |
| _Static Widgets_ | _Dynamic Widgets_ |
| Tidak bergantung pada perubahan data atau perubahan _behavior_ apapun | Di-_update_ selama _runtime_ berdasarkan _action_ atau perubahan data yang dilakukan oleh _user_ |
| Tidak memiliki _state_, akan di-_render_ sekali dan tidak akan di-_update_ sendiri, tetapi hanya akan diperbarui saat data eksternalnya berubah | Memiliki _internal state_ dan dapat di-_re-render_ jika _input_ data nya berubah atau saat _state_ dari _widget_ berubah |
| Contoh : _text_, _icon_, _raisedbutton_ | Contoh : _checkbox_, _radio button_, _slider_ |

## _Widget_ pada Project counter_7
#### Sebutkan _widget_ apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Material App : Sebagai root dari aplikasi <br />
- Scaffold : Menyediakan struktur dasar dan styling dalam aplikasi <br />
- Column : Display children dalam format vertikal <br />
- Row : Display children dalam format horizontal <br />
- FloatingActionButton : Menampilkan button yang dapat memberikan acrion tertentu <br />
- Text : Display string dalam satu baris <br />
- AppBar : Display toolbar widgets, seperti title dan actions <br />
- Icon : Menampilkan icon ke dalam sebuah element. <br />

## Method `setState()`
#### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` : Metode yang mengubah status komponen atau _state_ suatu variabel dan perlu di-_render_ ulang atau _re-render_ dengan status komponen yang telah diperbarui. `setState()` merupakan metode utama yang digunakan saat ingin memperbarui _User Interface_ sebagai respon terhadap _event handlers_ dan _server responses_. <br />

Variabel yang terdampak adalah variabel yang diganti pada fungsi tersebut (tergantung fungsi tersebut ingin mengubah apa). Pada proyek kali ini, variabel yang terdampak adalah `_counter` karena yang mengalami perubahan atau yang diubah adalah _counter_ itu sendiri. Variabel _counter_ akan memberikan dampak kepada teks yang sudah dibuat sebelumnya, yaitu “GANJIL” dan “GENAP”. <br />

## Perbedaan `const` dan `final`
#### Jelaskan perbedaan antara `const` dengan `final`.
`const` dan `final` merupakan dua _keyword_ dalam Dart yang digunakan untuk penetapan nilai konstan ke dalam suatu variabel dimana kedua _keywords_ ini akan menjaga ke-statis-an suatu nilai dalam variabel dalam seluruh program, dalam kata lain, setelah variabel didefinisikan, statusnya tidak dapat diubah. <br />

**`const`** <br />
Membuat nilai dari suatu variabel konstan hanya saat _compile-time_ dan menggunakan `const` pada suatu objek membuat seluruh _state_ objek tersebut _fixed_ saat _compile-time_ dan objek tersebut akan dianggap _immutable_ atau _frozen_ (tidak dapat diubah). <br />

**`final`** <br />
Untuk meng-_hardcore_ nilai suatu variabel dan tidak dapat diubah kedepannya, tidak ada operasi apapun yang dilakukan terhadap variabel ini yang dapat mengubah nilai variabel tersebut. <br />

**Perbedaan `const` dan `final`** <br />
| `const` | `final` |
| --- | --- |
| Nilainya sudah diketahui saat _compile-time_ | Nilainya diketahui saat _run-time_ |
| Dapat digunakan untuk deklarasi variabel _immutable_ yang bersifat konstan | Diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali |
| Digunakan saat sudah tahu bahwa nilai variabel tersebut tidak akan berubah saat _compile-time_ | Digunakan saat nilai variabel tidak diketahui saat _compile-time_ |
| Tidak dapat didefinisikan di dalam _class_, tetapi dapat didefinisikan di dalam fungsi | Dapat didefinsikan di dalam _class_ dan fungsi |
| Contoh : Saat mendeklarasikan sebuah kalimat yang akan selalu sama | Contoh : Saat ingin mengambil data dari sebuah API |

## Implementasi Poin 1 - 3
#### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.
**Poin 1 : Membuat sebuah program flutter baru dengan nama counter_7** <br />
Menjalankan menjalankan perintah `flutter create counter_7` pada command prompt atau terminal. <br />

**Poin 2 : Mengubah tampilan program menjadi seperti berikut** <br />
Mengimplementasikan _widget_ yang diperlukan pada program dan melakukan styling sesuai dengan tampilan yang diharapkan. <br />

**Poin 3 : Mengimplementasikan logika berikut** <br />
- Menambahkan _floatting Action Button_ untuk _decrement_ dan menyesuaikan posisinya sesuai tampilan <br />
- Membuat fungsi dan button _decrement_ untuk mengurangi nilai <br />
- Mengganti teks dan warna tampilan berdasarkan _counter_ nya (ganjil berwarna biru dan genap berwarna merah) <br />
- Memberikan conditional saat _counter_ == 0, dimana _button decrement_ tidak memiliki pengaruh apapun <br />
- (Bonus) Memberikan conditional saat _counter_ == 0, _button decrement_ akan menghilang atau disembunyikan. <br />
- Melakukan `git init - add - commit - push` ke dalam repositori baru bernama `pbp-flutter-lab` <br />


# Tugas 8 - Flutter Form
## `Navigator.push`, `Navigator.pushReplacement`, dan Perbedaannya
#### Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.
**`Navigator.push`** <br />
Method _push_ yang digunakan untuk menambahkan rute lain ke atas tumpukan _screen_ atau _stack_ saat ini, dimana halaman baru akan ditampilkan di atas halaman sebelumnya. <br />

**`Navigator.pushReplacement`** <br />
Method _push_ yang menggantikan _page_ yang ditampilkan saat ini dengan _page_ baru yang akan ditampilkan. <br />

**Perbedaan `Navigator.push` dan `Navigator.pushReplacement`** <br />
| `Navigator.push` | `Navigator.pushReplacement` |
| --- | --- |
| Layer akan ditimpa seperti pada _stack_ | Layer akan digantikan dengan layer baru yang dipush |
| Menambahkan _route_ baru ke tumpukan _route_ sebelumnya | Membuang _route_ sebelumnya dan menggantikannya dengan _route_ baru yang di push |
| Menambahkan _page_ pada _top of stack_ | Menghapus _top of stack_ sebelumnya dan menambahkan _page_ baru pada _top of stack_ |

## _Widget_ pada Project counter_7
#### Sebutkan _widget_ apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Selain _widget_ yang digunakan pada Tugas 7, saya juga menambahkan beberapa _widget_ lain, yaitu : <br />
- Padding : Sizing element <br />
- Center : Meletakkan dan menampilkan element di tengah halaman <br />
- SizedBox : Mengatur dan membuat kotak dengan ukuran tertentu <br />
- Form : Tempat untuk mengelompokkan widget bidang form <br />
- TextFormField : Mempertahankan bentuk formulir, sehingga update dan kesalahan dapat dilihat pada _User Interface_ atau UI <br />
- Container : Menampung widget di dalamnya <br />
- Navigator : Menuju routing halaman lain <br />
- ListTile : Row dengan height yang konstan atau tetap <br />
- DropdownButtonFormField : Menampung list of item dalam bentuk dropdown <br />
- TextButton : Button yang memiliki fungsi saat diberikan _action_ oleh _user_ <br />
- Card : Membentuk component kartu seperti container dan diloop untuk setiap data nya. <br />

## Jenis - Jenis _Event_ pada _Flutter_
#### Sebutkan jenis-jenis _event_ yang ada pada _Flutter_.
- `onPressed` <br />
- `onSaved` <br />
- `onChanged` <br />
- `onClick` <br />
- `onHover` <br />
- `onTap` <br />
- `onLongPress` <br />
- `AnimationEvent` <br />
- `ErrorEvent` <br />
- dst. <br />

## Cara Kerja `Navigator`
#### Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi `Flutter`.
Menggunakan prinsip _stack_ dimana halaman yang akan diganti akan dipush pada _top of stack_ dan jika ingin kembali ke halaman sebelumnya, menggunakan operasi _pop_ pada _stack_. Page yang saat ini dilihat akan dihapus dari stack dan tampilan _user_ akan berganti ke halaman sebelumnya. Method `Navigator.push` untuk menavigasi ke halaman selanjutnya dan method `Navigator.pop` untuk menavigasi kembali ke halaman sebelumnya. <br />

## Implementasi Poin 1 - 4
#### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.
**Poin 1 : Menambahkan drawer/hamburger menu pada app yang telah dibuat sebeumnya.** <br />
Membuat drawer pada semua file yang dibutuhkan sesuai dengan soal. <br />

**Poin 2 : Menambahkan tiga tombol navigasi pada drawer/hamburger.** <br />
Membuat _routing_ atau navigasi pada drawer untuk mengarah ke halaman yang dituju, dimana navigasi pertama untuk ke halaman _counter_, navigasi kedua untuk ke halaman _form_, dan navigasi yang ketiga untuk ke halaman _data budget_ yang akan menampilkan data sesuai dengan input pada halaman _form_. <br />

**Poin 3 : Menambahkan halaman form.** <br />
Membuat halaman _form_ beserta elemen inputnya sesuai dengan soal, yaitu judul, nominal, tipe _budget_, dan sebuah _button_ untuk menyimpan _budget_. <br />

**Poin 4 : Menambahkan halaman data _budget_.** <br />
- Membuat class Budget dan ListBudget sebagai objek dan tempat penyimpanan objek budget. <br />
- Menampilkan data yang terdapat pada form _budget_ menggunakan bantuan _card_. <br />


# Tugas 9 - Integrasi Web Service pada Flutter
## Hubungan Pengambilan Data dari JSON dan Model 
#### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON tanpa membuat model terlebih dahulu dapat dilakukan, yaitu dengan cara mengkonversikannya langsung setelah data JSON di decode dari url. <br />
Pengambilan data JSON tanpa membuat model terlebih dahulu tidak lebih baik dibandingkan membuat model sebelum melakukan pengambilan data JSON. Jika tidak membuat model terlebih dahulu, terdapat kemungkinan data JSON yang diambil tidak sesuai dengan yang diharapkan. Selain itu, pengambilan data dengan membuat model terlebih dahulu membuat struktur data lebih baik dan mengurangi terjadinya kesalahan dalam pengambilan data. Sehingga dapat disimpulkan bahwa pengambilan data JSON lebih baik dengan membuat model terlebih dahulu. <br />

## _Widget_ pada Project counter_7
#### Sebutkan _widget_ apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Selain _widget_ yang digunakan pada Tugas 7 dan Tugas 8, saya juga menambahkan beberapa _widget_ lain, yaitu : <br />
- FutureBuilder : Men-generate array suatu widget berdasarkan suatu snapshot <br />
- CircularProgressIndicator : Indikator lingkaran yang berputar yang mengindikasikan aplikasi sedang bekerja (masih tahap proses) <br />
- InkWell : Area yang dapat merespon terhadap sentuhan <br />
- Checkbox : Widget untuk menandakan status dan perubahan status <br />
- Flexible : Mengendalikan ukuran dari widget lain seperti widget row, column, atau flex <br />
- ListView : Widget yang bisa disusun secara linear dan dapat dilakukan action _scroll_ <br />
- Drawer : Memberikan akses ke berbagai tujuan dan funsionalitas pada aplikasi. <br />

## Mekanisme Pengambilan Data dari JSON
#### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
a. Menambahkan dependensi `http` <br />
b. (Opsional) Membuat model sesuai dengan respons data <br />
c. Membuat fungsi http request untuk mengambil data dari suatu url dan mendecode data yang sudah diambil dan diubah ke bentuk JSON <br />
d. Melakukan HTTP Request dengan method `GET` dan respons yang didapatkan akan dikonversi ke dalam model yang telah dibuat <br />
e. Menampilkan data yang telah dikonversi menggunakan `FutureBuilder`. <br />

## Implementasi Poin 1 - 5
#### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.
**Poin 1 : Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman _mywatchlist_.** <br />
Melakukan extract widget _drawer_ dan menambahkan tombol navigasi pada _drawer_. <br />

**Poin 2 : Membuat satu file dart yang berisi model _mywatchlist_.** <br />
Membuat model _mywatchlist_ berdasarkan yang telah dibuat pada Tugas 3 dengan menggunakan bantuan website _quicktype_. <br />

**Poin 3 : Menambahkan halaman _mywatchlist_ yang berisi semua _watch list_ yang ada pada endpoint JSON di Django yang telah di _deploy_ ke Heroku sebelumnya.** <br />
Menambahkan dependency http dan fungsinya untuk melakukan fetch data dari web Tugas 3 serta menambahkan permission internet pada Android. <br />
Menampilkan data nya sesuai pada soal dan membuat setiap data akan routing ke halaman detail. <br />

**Poin 4 : Menambahkan halaman detail untuk setiap _mywatchlist_ yang ada pada daftar tersebut.** <br />
Melakukan passing model yang bersesuaian dengan card dan menampilkan data nya pada halaman detail. <br />

**Poin 5 : Menambahkan tombol untuk kembali ke daftar _mywatchlist_.** <br />
Menambagkan button back untuk kembali. <br />

Implementasi bagian Bonus. <br />
