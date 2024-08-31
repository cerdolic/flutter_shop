import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchStateNotifier extends StateNotifier<List<String>> {
  SearchStateNotifier(this.searchPlaceholders) : super([]);

  final List<String> searchPlaceholders;

  void search(String query) {
    if (query.isEmpty) {
      state = [];
    } else {
      state = searchPlaceholders
          .where(
              (element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  void clearSearch() {
    state = [];
  }
}

final searchProvider = StateNotifierProvider<SearchStateNotifier, List<String>>(
  (ref) => SearchStateNotifier([
    'Nike Air Max Shoes',
    'Nike Jordan Shoes',
    'Nike Air Force Shoes',
    'Nike Club Max Shoes',
    'Snakers Nike Shoes',
    'Regular Shoes'
  ]),
);
