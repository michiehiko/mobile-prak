import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../data/models/mahasiswa_model.dart';

class MahasiswaListView extends StatelessWidget {
  final List<MahasiswaModel> list;
  final Future<void> Function() onRefresh;

  const MahasiswaListView({Key? key, required this.list, required this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: list.length,
        itemBuilder: (context, index) {
          final mhs = list[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 2,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                backgroundColor: AppConstants.gradientBlue[0].withOpacity(0.2),
                child: Icon(Icons.school, color: AppConstants.gradientBlue[0]),
              ),
              title: Text(mhs.nama, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('NIM: ${mhs.nim}\n${mhs.prodi}'),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}