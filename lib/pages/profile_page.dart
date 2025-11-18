import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Profil Pengguna"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.green,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              SizedBox(height: 15),
              Text(
                "Nama Pengguna",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "user@marketplace.com",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.green),
                title: Text("Riwayat Belanja"),
                subtitle: Text("Lihat transaksi Anda sebelumnya"),
              ),
              ListTile(
                leading: Icon(Icons.favorite_border, color: Colors.green),
                title: Text("Produk Favorit"),
                subtitle: Text("Daftar barang yang disukai"),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text("Pengaturan Akun"),
                subtitle: Text("Ubah data pribadi dan keamanan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
