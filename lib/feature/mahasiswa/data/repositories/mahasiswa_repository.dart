import '../models/mahasiswa_model.dart';

class MahasiswaRepository {
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      MahasiswaModel(nama: 'Faza', nim: '152001001', prodi: 'D4 Teknik Informatika'),
      MahasiswaModel(nama: 'Nadhifa', nim: '152001002', prodi: 'D4 Teknik Informatika'),
      MahasiswaModel(nama: 'Bintang', nim: '152001003', prodi: 'D4 Teknik Informatika'),
    ];
  }
}