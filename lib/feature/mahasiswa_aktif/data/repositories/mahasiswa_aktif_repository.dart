import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  Future<List<MahasiswaAktifModel>> getList() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      MahasiswaAktifModel(nama: 'Faza', nim: '152001001', status: 'Aktif (Semester 4)'),
      MahasiswaAktifModel(nama: 'Nadhifa', nim: '152001002', status: 'Aktif (Semester 4)'),
    ];
  }
}