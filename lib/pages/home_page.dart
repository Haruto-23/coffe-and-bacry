import '../pages/cart_page.dart';
import '../pages/landing_page.dart';
import '../pages/order_page.dart';
import '../pages/profile_page.dart';
import '../themes/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // siapkan variabel untuk nilai awal tab bottom navigation barnya
  int selectedIndex = 0;

  // variabel screen/page apa saja yg akan dipakai
  static List<Widget> screenList = [
    LandingPage(), //0
    CartPage(), //1
    OrderPage(), //2
    ProfilePage() //3
  ];

  // buat fungsi tap.nya
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Keranjang"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: "Pesanan"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil"
          ),

        ],

        // atribut konfigurasi bottomnavigationbarnya
        currentIndex: selectedIndex,
        selectedItemColor: secondaryColor,
        unselectedItemColor: whiteColor,
        onTap: onItemTapped,
        backgroundColor: Color.fromARGB(255, 103, 103, 103),
        type: BottomNavigationBarType.fixed,
      ),

      body: screenList.elementAt(selectedIndex),
    );
  }
}
