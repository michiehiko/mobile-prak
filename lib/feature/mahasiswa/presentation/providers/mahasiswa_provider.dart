import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:week4/core/services/local_storage_service.dart';
import 'package:week4/feature/mahasiswa/data/models/mahasiswa_model.dart';
import 'package:week4/feature/mahasiswa/data/repositories/mahasiswa_repository.dart';

final mahasiswaRepositoryProvider = Provider<MahasiswaRepository>((ref) {
  return MahasiswaRepository();
});

class MahasiswaNotifier extends StateNotifier<AsyncValue<List<MahasiswaModel>>> {
  final MahasiswaRepository _repository;
  final LocalStorageService _storage;

  MahasiswaNotifier(this._repository, this._storage)
      : super(const AsyncValue.loading()) {
    loadMahasiswaList();
  }

  Future<void> loadMahasiswaList() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repository.getMahasiswaList();
      state = AsyncValue.data(data);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refresh() async {
    await loadMahasiswaList();
  }

  Future<void> saveSelectedMahasiswa(MahasiswaModel mahasiswa) async {
    await _storage.addUserToSavedList(
      userId: mahasiswa.nim,
      username: mahasiswa.nama,
    );
  }

  Future<void> removeSavedUser(String userId) async {
    await _storage.removeSavedUser(userId);
  }

  Future<void> clearSavedUsers() async {
    await _storage.clearSavedUsers();
  }
}

final mahasiswaNotifierProvider =
StateNotifierProvider.autoDispose<
    MahasiswaNotifier,
    AsyncValue<List<MahasiswaModel>>
>((ref) {
  final repository = ref.watch(mahasiswaRepositoryProvider);
  final storage = LocalStorageService();
  return MahasiswaNotifier(repository, storage);
});