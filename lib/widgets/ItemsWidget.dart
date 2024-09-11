// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class ItemsWidget extends StatelessWidget {
//   ItemsWidget({super.key});

//   List<String> myProductName = [
//     'Dasi idn',
//     'Sepatu idn',
//     'Seragam 1 idn',
//     'Seragam 2 idn',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       childAspectRatio: 0.68,
//       physics: const NeverScrollableScrollPhysics(),
//       crossAxisCount: 2,
//       shrinkWrap: true,
//       children: [
//         for (int i = 1; i < 5; i++)
//           Container(
//             padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
//             margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF4C53A5),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: const Text(
//                         '-50%',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const Icon(Icons.favorite_border, color: Colors.red)
//                   ],
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, 'itemPage');
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.all(10),
//                     child: Image.asset(
//                       'images/$i.jpeg',
//                       height: 100,
//                       width: 100,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   alignment: Alignment.centerLeft,
//                   child: const Text(
//                     'Product Title',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Color(0xFF4C53A5),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   child: const Text(
//                     'Write description of product',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Color(0xFF4C53A5),
//                     ),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 5),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '\$55',
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF4C53A5),
//                         ),
//                       ),
//                       Icon(
//                         Icons.shopping_cart_checkout,
//                         color: Color(0xFF4C53A5),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  List<String> myProductName = [
    'Dasi idn',
    'Sepatu idn',
    'Seragam 1 idn',
    'Seragam 2 idn',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myProductName.length; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      'images/${i + 1}.jpeg', // Tambahkan +1 karena file gambar dimulai dari 1
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    myProductName[i], // Tampilkan nama produk
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Write description of product',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$55',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
