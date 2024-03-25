import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/notif.dart';
import 'pages/profil.dart';
import 'pages/historyreservasi.dart';
import 'pages/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediCare',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    HistoryReservasi(),
    Notifikasi(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'My',
                  style: GoogleFonts.poppins(
                    color: Color(0xFFFF720C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: GoogleFonts.poppins(
                    color: Color(0xFFFC6A84),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'Medicare',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF0C0A91),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
            ],
          ),
        ),
       actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0), // tambahkan padding ke kanan sebesar 16.0
            child: ElevatedButton(
              onPressed: () {
                // Masukkan kode untuk menavigasi ke halaman login di sini
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white), // ganti warna teks menjadi putih
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // ganti warna teks menjadi putih
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // ganti warna latar belakang menjadi biru
              ),
            ),
          ),
        ],
      ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar, 
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF00C607),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Reservasi', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile', 
          ),
        ],
      ),
    );
  }
}

