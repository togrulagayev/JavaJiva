import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 1);
final totalPriceProvider = StateProvider<double>((ref) => 0.0);
