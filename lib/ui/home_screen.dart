import 'package:covid_flutter/service/api_service.dart';
import 'package:covid_flutter/ui/hospital_screen.dart';
import 'package:flutter/material.dart';

import '../model/hospital.dart';

class HomeScreen extends StatelessWidget {
  final Future<List<Hospital>?> hospitals = ApiService().getHospital();

  HomeScreen({super.key, this.emailId, this.password, this.firstName});

  final String? emailId;
  final String? password;
  final String? firstName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.shade300, width: 2), // Mengatur Border
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi $firstName!',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 2),
              Text(
                'how are you feeling today?',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: [
              // textfield
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.blue.shade200,
                      ),
                      filled: true,
                      fillColor: Colors.blue.shade50,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade200, width: 2.0),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade200, width: 2.0),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.blue.shade200)),
                ),
              ),
              // teks our service
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Our Service',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See more',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              // content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/hospital');
                              },
                              icon: Icon(
                                Icons.local_hospital_rounded,
                                size: 40,
                                color: Color(0xFFFFC1E3),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hospital',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/news');
                              },
                              icon: Icon(
                                Icons.newspaper_rounded,
                                size: 40,
                                color: Color(0xFFB0BEC5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'News',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.warning_amber_rounded,
                                size: 40,
                                color: Color(0xFFFF5722),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hoax',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.grid_view_rounded,
                                size: 40,
                                color: Color(0xFF009688),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Other',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              // teks our package
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearest Hospital',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/hospital');
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              // content news 2 item
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: 340,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            border: Border.all(color: Colors.grey.shade200,width: 3),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                  'assets/image/UP Health System – Marquette - Healthcare Snapshots.jpeg',
                                  width: 150,
                                  height: 120),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'title rumah sakit',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'regio,province,address',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: 340,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                  'assets/image/UP Health System – Marquette - Healthcare Snapshots.jpeg',
                                  width: 150,
                                  height: 120),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'title rumah sakit',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'regio,province,address',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
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
              onPressed: () {},
              icon: const Icon(
                Icons.home_filled,
                color: Colors.blueAccent,
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
              onPressed: () {
                Navigator.pushNamed(context, '/news');
              },
              icon: const Icon(
                Icons.newspaper_rounded,
                color: Colors.black54,
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
            // profile
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
