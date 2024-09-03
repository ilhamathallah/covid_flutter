import 'package:covid_flutter/model/hospital.dart';
import 'package:covid_flutter/service/api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Future<List<Hospital>?> hospitalFuture = ApiService().getHospital();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Rumah Sakit'),
      ),
      body: FutureBuilder<List<Hospital>?>(
        future: hospitalFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}'); // Menampilkan kesalahan
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data != null) {
            print('Data: ${snapshot.data}'); // Menampilkan data
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Hospital hospital = snapshot.data![index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('${hospital.name}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Provinsi: ${hospital.region}'),
                        Text('Alamat: ${hospital.address}'),
                        Text('Nomor: ${hospital.phone}'),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('Tidak ada data tersedia'));
          }
        },
      ),
    );
  }
}