import 'package:week4/feature/mahasiswa/data/models/mahasiswa_model.dart';
import 'package:dio/dio.dart';

class MahasiswaRepository {
  // Panggil kurir VIP
  final Dio _dio = Dio();

  Future<List<MahasiswaModel>> getMahasiswaList() async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/comments');

      if (response.statusCode == 200) {

        final List<dynamic> data = response.data;

        return data.map((json) => MahasiswaModel.fromJson(json)).toList();
      } else {
        throw Exception('Gagal memuat data mahasiswa: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
      throw Exception('Gagal memuat data: $e');
    }
  }
}