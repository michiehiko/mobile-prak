class MahasiswaModel {
  final String nama;
  final String nim;
  final String prodi;

  MahasiswaModel({
    required this.nama,
    required this.nim,
    required this.prodi
  });

  factory MahasiswaModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaModel(
      nama: json['name'] ?? 'Tanpa Nama',
      nim: json['id']?.toString() ?? '-',
      prodi: json['email'] ?? '-',
    );
  }
}