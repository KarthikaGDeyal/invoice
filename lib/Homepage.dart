import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/Card.dart';
import 'package:invoice/invoice.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: NewGradientAppBar(
        elevation: 0,
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 228, 103, 95),
          Color.fromARGB(255, 77, 175, 255)
        ]),
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome! ',
              style: GoogleFonts.raleway(fontSize: 18),
            ),
            Text('MAUSAM',
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold))
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.qr_code_scanner_outlined),
          SizedBox(
            width: 7,
          ),
          Text('')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 170,
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 243, 59, 45),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: const CircleAvatar(
                                      radius: 55,
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar.png")

                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'SAMMUNATI BACHAT KHATA',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'INR. 1,00,999.35',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      '281656484161548651',
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),


                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/189/189666.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'ADD NEW INVOICE',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              children: const [
                                CardItem(
                                    image:
                                    "https://cdn-icons-png.flaticon.com/512/4108/4108841.png",
                                    category: 'Scan Your Bill'),
                                CardItem(
                                    image:
                                    'https://cdn-icons-png.flaticon.com/512/3080/3080541.png',
                                    category: 'Upload Bill'),
                              ],
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/189/189666.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'MY INVOICES',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Invoices(
                                date: '29-12-2023', amount: '1320'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}











