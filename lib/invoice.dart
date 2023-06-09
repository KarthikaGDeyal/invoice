
import 'package:flutter/material.dart';

class Invoices extends StatelessWidget {
  final String date;
  final String amount;
  const Invoices({super.key, required this.date, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 100,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: double.infinity,
              width: 20,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [

                      const Text('MyG Kakkanad',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),


                    const Text(
                      '564446456',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),


                    const SizedBox(height: 5,),
                    Text(date)
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 110,
            ),
            Text('Rs.$amount')
          ],
        ),
      ),
    );
  }
}