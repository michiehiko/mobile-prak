import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/widgets/widget.dart';
import '../providers/mahasiswa_aktif_provider.dart';
import '../widgets/mahasiswa_aktif_widget.dart';

class MahasiswaAktifPage extends ConsumerWidget {
  const MahasiswaAktifPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mhsAktifNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Mahasiswa Aktif')),
      body: state.when(
        loading: () => const LoadingWidget(),
        error: (err, stack) => CustomErrorWidget(message: err.toString()),
        data: (list) => MahasiswaAktifListView(
          list: list,
          onRefresh: () async => ref.invalidate(mhsAktifNotifierProvider),
        ),
      ),
    );
  }
}