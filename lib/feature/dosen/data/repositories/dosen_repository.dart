import 'package:week4/feature/dosen/data/models/dosen_model.dart';
import 'package:dio/dio.dart';

class DosenRepository {
  final Dio _dio = Dio();

  Future<List<DosenModel>> getDosenList() async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/users');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;

        return data.map((json) => DosenModel.fromJson(json)).toList();
      } else {
        throw Exception('Gagal memuat data dosen: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
      throw Exception('Gagal memuat data: $e');
    }
  }
}