import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/widgets/widget.dart';
import '../providers/mahasiswa_provider.dart';
import '../widgets/mahasiswa_widget.dart';

class MahasiswaPage extends ConsumerWidget {
  const MahasiswaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mahasiswaNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Total Mahasiswa')),
      body: state.when(
        loading: () => const LoadingWidget(),
        error: (err, stack) => CustomErrorWidget(message: err.toString()),
        data: (list) => MahasiswaListView(
          list: list,
          onRefresh: () async => ref.invalidate(mahasiswaNotifierProvider),
        ),
      ),
    );
  }
}