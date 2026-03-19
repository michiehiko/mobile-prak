import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile User'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 100, bottom: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppConstants.gradientPurple,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 50, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Admin D4TI',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'admin.d4ti@vokasi.unair.ac.id',
                  style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Pengaturan Akun'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}