class MahasiswaAktifModel {
  final String nama;
  final String nim;
  final String status;

  MahasiswaAktifModel({
    required this.nama,
    required this.nim,
    required this.status
  });

  factory MahasiswaAktifModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaAktifModel(
      nama: json['title'] ?? 'Tanpa Nama',
      nim: json['id']?.toString() ?? '-',
      status: json['body'] ?? '-',
    );
  }
}