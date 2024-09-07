import '../themes/themes.dart';
import '../widgets/cart_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 39,
        ),
        child: ListView(
          children: [
            Text(
              "Keranjang\n",
              style: whiteTextstyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),

            // widget cart
            CartWidget(
              nama: "Roti Isi",
                    imageUrl: "assets/roti isi.png",
                    harga: "IDR 10.000",
              qty: "1",
            ),
            CartWidget(
              nama: "Espresso",
                    imageUrl: "assets/Espresso.png",
                    harga: "IDR 5.000",
              qty: "1",
            ),
            CartWidget(
              nama: "Croisant",
                    imageUrl: "assets/croisant.png",
                    harga: "IDR 15.000",
              qty: "1",
            ),
          ],
        ),
      ),
    );
  }
}
