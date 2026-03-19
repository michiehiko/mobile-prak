import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../data/models/mahasiswa_aktif_model.dart';

class MahasiswaAktifListView extends StatelessWidget {
  final List<MahasiswaAktifModel> list;
  final Future<void> Function() onRefresh;

  const MahasiswaAktifListView({Key? key, required this.list, required this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: list.length,
        itemBuilder: (context, index) {
          final mhs = list[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: AppConstants.gradientGreen),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const Icon(Icons.check_circle, color: Colors.white, size: 32),
              title: Text(mhs.nama, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text('NIM: ${mhs.nim}\nStatus: ${mhs.status}', style: const TextStyle(color: Colors.white70)),
            ),
          );
        },
      ),
    );
  }
}