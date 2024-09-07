import '../themes/themes.dart';
import '../widgets/order_widget.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Text("Riwayat Pesanan", style: whiteTextstyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ), ),
            SizedBox(height: 15,),
            
            //panggil order widgets
            OrderWidget(
              nama: "pie",
                    imageUrl: "assets/pie.png",
                    harga: "IDR 5.000",
              qty: "1",
              status: "Diproses",
            ),

             OrderWidget(
              nama: "Black Coffe",
                    imageUrl: "assets/Black Coffee.png",
                    harga: "IDR 5 .000",
              qty: "1",
              status: "Selesai",
            ),
          ],
        ),
      ),
    );
  }
}