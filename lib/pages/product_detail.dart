import '../pages/order_now_page.dart';
import '../themes/themes.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail(
      {super.key,
      required this.nama,
      required this.imageUrl,
      required this.harga});

  String nama, imageUrl, harga;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override

  // variabel jumlah
  int jumlah = 1;

  // fungsi menambah
  void increment() {
    setState(() {
      jumlah++;
    });
  }

  // fungsi mengurang
  void decrement() {
    setState(() {

      if (jumlah > 1) {
        jumlah--;
      }
      
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail Menu",
          style: whiteTextstyle,
        ),
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Image.asset(
              widget.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nama,
                      style: whiteTextstyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.harga,
                      style: greyTextstyle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        decrement();
                      },
                      child: Image.asset(
                        "assets/ic-kurang.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(jumlah.toString()),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        increment();
                      },
                      child: Image.asset(
                        "assets/ic-tambah.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Detail
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail",
              style: whiteTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Coffe hitam yang harum dan masih hangat",
              style: greyTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            // Komposisi
            SizedBox(
              height: 20,
            ),
            Text(
              "Komposisi",
              style: whiteTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "coffe dan gula",
              style: greyTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      // BottomNavigation
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // keranjang
            Container(
              width: 150,
              height: 42,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: primaryColor),
                onPressed: null,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 19,
                    right: 19,
                  ),
                  child: Text(
                    "+ Keranjang",
                    style: whiteTextstyle,
                  ),
                ),
              ),
            ),

            // Pesan Sekarang
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderNowPage(nama: widget.nama, imageUrl: widget.imageUrl, harga: widget.harga, qty: jumlah.toString()) ));
              },
              child: Container(
                width: 150,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: redColor, width: 2),
                ),
                child: Center(
                    child: Text(
                  "Pesan Sekarang",
                  style: secodaryTextstyle,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
