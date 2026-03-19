import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/mahasiswa_model.dart';
import '../../data/repositories/mahasiswa_repository.dart';

final mahasiswaRepoProvider = Provider((ref) => MahasiswaRepository());

class MahasiswaNotifier extends StateNotifier<AsyncValue<List<MahasiswaModel>>> {
  final MahasiswaRepository _repo;
  MahasiswaNotifier(this._repo) : super(const AsyncValue.loading()) { loadData(); }

  Future<void> loadData() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repo.getMahasiswaList();
      state = AsyncValue.data(data);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final mahasiswaNotifierProvider = StateNotifierProvider.autoDispose<MahasiswaNotifier, AsyncValue<List<MahasiswaModel>>>((ref) {
  return MahasiswaNotifier(ref.watch(mahasiswaRepoProvider));
});