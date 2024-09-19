import 'package:covid_flutter/model/hospital.dart';
import 'package:covid_flutter/service/api_service.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class HospitalScreen extends StatelessWidget {
  final Future<List<Hospital>?> hospitals = ApiService().getHospital();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Hospital>?>(
        future: hospitals,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Tidak ada data tersedia'));
          } else {
            return Stack(
              children: <Widget>[
                // Background content
                Center(child: Text('Background Content')),
                DraggableScrollableActuator(
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.4,
                    minChildSize: 0.1,
                    maxChildSize: 1.0,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Garis di bagian atas
                            GestureDetector(
                              onTap: () {
                                DraggableScrollableActuator.reset(context);
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            // TextField untuk pencarian
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade200,
                                  hintText: 'Rumah Sakit Terdekat...',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.search, color: Colors.black, size: 25),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: TextStyle(color: Colors.black45),
                                ),
                                style: TextStyle(color: Colors.black),
                                onChanged: (value) {
                                  // Logika ketika teks berubah
                                  print('Teks saat ini: $value');
                                },
                                onSubmitted: (value) {
                                  // Logika ketika teks dikirim (misalnya, saat menekan tombol Enter)
                                  print('Teks yang dikirim: $value');
                                },
                              ),
                            ),

                            // Konten yang dapat digeser
                            Expanded(
                              child: ListView.builder(
                                controller: scrollController,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  Hospital hospital = snapshot.data![index];
                                  return Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            hospital.name ?? 'N/A',
                                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                                          ),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Text(
                                                '4.5',
                                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                                              ),
                                              Icon(Icons.star_rate_rounded, color: Colors.orangeAccent, size: 24),
                                              SizedBox(width: 3),
                                              Text(
                                                '(15 reviews)',
                                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey.shade600),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                child: Container(
                                                  width: 2,
                                                  height: 15,
                                                  color: Colors.grey.shade300,
                                                ),
                                              ),
                                              Text(
                                                'OPEN',
                                                style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 13),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Card(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Mengatur border radius
                                            ),
                                            color: Colors.grey.shade50,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on, // Ikon lokasi di sebelah kiri
                                                    size: 20, // Ukuran ikon
                                                    color: Colors.grey.shade500, // Warna ikon
                                                  ),
                                                  SizedBox(width: 5), // Spasi antara ikon dan teks
                                                  Expanded(
                                                    child: Text(
                                                      '${hospital.region}, ${hospital.province}, ${hospital.address}',
                                                      overflow: TextOverflow.ellipsis, // Memotong teks dengan titik-titik jika terlalu panjang
                                                      maxLines: 1, // Membatasi teks hanya satu baris
                                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5), // Spasi antara teks dan ikon penanda jalan
                                                  Icon(
                                                    Icons.directions_outlined, // Ikon penanda jalan di sebelah kanan
                                                    size: 20, // Ukuran ikon
                                                    color: Colors.blue, // Warna ikon
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Telepon: ${hospital.phone ?? 'N/A'}',
                                            style: TextStyle(fontSize: 15, color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
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
              },
              icon: const Icon(
                Icons.local_hospital_rounded,
                color: Color(0xFFFFC1E3),
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
