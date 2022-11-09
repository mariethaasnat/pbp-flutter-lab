# Tugas 7 PBP - README
Nama : Marietha Asnat Nauli Sitompul <br />
NPM : 2106752413 <br />
Kelas : PBP - B <br />
Kode Asdos : BI 

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
- AppBar : Display toolbar widgets, seperti title dan actions. <br />

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
- Melakukan `git init - add - commit - push` ke dalam repositori baru bernama `pbp-flutter-lab`
