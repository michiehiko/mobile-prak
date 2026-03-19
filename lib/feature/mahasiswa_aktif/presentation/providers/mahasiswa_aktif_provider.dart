import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/mahasiswa_aktif_model.dart';
import '../../data/repositories/mahasiswa_aktif_repository.dart';

final mhsAktifRepoProvider = Provider((ref) => MahasiswaAktifRepository());

class MhsAktifNotifier extends StateNotifier<AsyncValue<List<MahasiswaAktifModel>>> {
  final MahasiswaAktifRepository _repo;
  MhsAktifNotifier(this._repo) : super(const AsyncValue.loading()) { load(); }

  Future<void> load() async {
    state = const AsyncValue.loading();
    try {
      state = AsyncValue.data(await _repo.getList());
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final mhsAktifNotifierProvider = StateNotifierProvider.autoDispose<MhsAktifNotifier, AsyncValue<List<MahasiswaAktifModel>>>((ref) {
  return MhsAktifNotifier(ref.watch(mhsAktifRepoProvider));
});