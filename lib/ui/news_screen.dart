import 'package:covid_flutter/service/api_service.dart';
import 'package:covid_flutter/ui/hospital_screen.dart';
import 'package:flutter/material.dart';

import '../model/news.dart';
import 'home_screen.dart';

class NewsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          // search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search_rounded, color: Colors.blue.shade200,),
                  filled: true,
                  fillColor: Colors.blue.shade50,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2.0),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2.0),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blue.shade200)
              ),
            ),
          ),

          // category scroll
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Trending', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Trending', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Trending', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Trending', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Trending', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Trending', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                  ),
                ],
              ),
            ),
          ),

          // content scroll horizontal
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Untuk mengatur jarak antar Card
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4, // Mengatur shadow dari card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Mengatur border radius
                      ),
                      child: Container(
                        width: 300, // Lebar card
                        height: 220, // Tinggi card
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget> [
                            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print('Menu tapped');
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey.shade100,
                                        child: Icon(Icons.remove_red_eye_outlined, size: 15, color: Colors.grey.shade400,), // Ikon titik tiga
                                      ),
                                    ),
                                    Text('10k', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: Colors.grey.shade400),),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Menu tapped');
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade100,
                                    child: Icon(Icons.more_horiz_rounded, size: 20, color: Colors.grey.shade400,), // Ikon titik tiga
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4, // Mengatur shadow dari card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Mengatur border radius
                      ),
                      child: Container(
                        width: 300, // Lebar card
                        height: 220, // Tinggi card
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget> [
                            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print('Menu tapped');
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey.shade100,
                                        child: Icon(Icons.remove_red_eye_outlined, size: 22, color: Colors.grey.shade400,), // Ikon titik tiga
                                      ),
                                    ),
                                    Text('10k', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.grey.shade400),),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Menu tapped');
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade100,
                                    child: Icon(Icons.more_horiz_rounded, size: 20, color: Colors.grey.shade400,), // Ikon titik tiga
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4, // Mengatur shadow dari card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Mengatur border radius
                      ),
                      child: Container(
                        width: 300, // Lebar card
                        height: 220, // Tinggi card
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget> [
                            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print('Menu tapped');
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey.shade100,
                                        child: Icon(Icons.remove_red_eye_outlined, size: 22, color: Colors.grey.shade400,), // Ikon titik tiga
                                      ),
                                    ),
                                    Text('10k', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.grey.shade400),),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Menu tapped');
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade100,
                                    child: Icon(Icons.more_horiz_rounded, size: 20, color: Colors.grey.shade400,), // Ikon titik tiga
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4, // Mengatur shadow dari card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Mengatur border radius
                      ),
                      child: Container(
                        width: 300, // Lebar card
                        height: 220, // Tinggi card
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget> [
                            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print('Menu tapped');
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey.shade100,
                                        child: Icon(Icons.remove_red_eye_outlined, size: 22, color: Colors.grey.shade400,), // Ikon titik tiga
                                      ),
                                    ),
                                    Text('10k', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.grey.shade400),),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Menu tapped');
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade100,
                                    child: Icon(Icons.more_horiz_rounded, size: 20, color: Colors.grey.shade400,), // Ikon titik tiga
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // home
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(
                Icons.home_filled,
                color: Colors.black54,
                size: 30,
              ),
            ),
            // hospital
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HospitalScreen()),
                      (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(
                Icons.local_hospital_rounded,
                color: Colors.black54,
                size: 30,
              ),
            ),

            // news
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.newspaper_rounded,
                color: Color(0xFFB0BEC5),
                size: 30,
              ),
            ),
            // hoax
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.warning_amber_rounded,
                color: Colors.black54,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.black54,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
