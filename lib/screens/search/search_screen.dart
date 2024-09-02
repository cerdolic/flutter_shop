import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/theme/text_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> searchPlaceholders = [
    'Nike Air Max Shoes',
    'Nike Jordan Shoes',
    'Nike Air Force Shoes',
    'Nike Club Max Shoes',
    'Snakers Nike Shoes',
    'Regular Shoes'
  ];
  Timer? _debounce;
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<List<String>> _searchResultsNotifier =
      ValueNotifier<List<String>>([]);

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 300), () {
        _handleSearch(_searchController.text);
      });
    });
  }

  void _handleSearch(String text) {
    final results = text.isNotEmpty
        ? searchPlaceholders
            .where((e) => e.toLowerCase().contains(text.toLowerCase()))
            .toList()
        : <String>[];
    _searchResultsNotifier.value = results;
  }

  void _cancelSearch() {
    _searchController.clear();
    _searchResultsNotifier.value = [];
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return SearchData(
      searchController: _searchController,
      searchResultsNotifier: _searchResultsNotifier,
      onCancelSearch: _cancelSearch,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            CancelSearchButton(),
          ],
        ),
        body: const SearchBody(),
      ),
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    _searchResultsNotifier.dispose();
    super.dispose();
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    final searchData = SearchData.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const SearchInputField(),
          const SizedBox(height: 24),
          Expanded(
            child: ValueListenableBuilder<List<String>>(
              valueListenable: searchData!.searchResultsNotifier,
              builder: (context, searchResults, child) {
                return ListView.builder(
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Text(
                          searchResults[index],
                          style: darkGunmetal_14_400,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchInputField extends StatelessWidget {
  const SearchInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final searchData = SearchData.of(context);
    return TextFormField(
      maxLines: 1,
      controller: searchData!.searchController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 8,
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: 'Search Your Shoes',
        hintStyle: auroMetalSaurus_14_400,
        prefixIconConstraints: const BoxConstraints(
          maxWidth: 58,
          maxHeight: 32,
        ),
        prefixIcon: Container(
          padding: const EdgeInsets.only(left: 14, right: 12),
          child: SvgPicture.asset(search),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class CancelSearchButton extends StatelessWidget {
  const CancelSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final searchData = SearchData.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextButton(
        onPressed: searchData!.onCancelSearch,
        child: Text(
          'Cancel',
          style: unitedNationsBlue_14_500,
        ),
      ),
    );
  }
}

class SearchData extends InheritedWidget {
  final TextEditingController searchController;
  final ValueNotifier<List<String>> searchResultsNotifier;
  final VoidCallback onCancelSearch;

  const SearchData({
    super.key,
    required this.searchController,
    required this.searchResultsNotifier,
    required this.onCancelSearch,
    required super.child,
  });

  @override
  bool updateShouldNotify(SearchData oldWidget) {
    return searchResultsNotifier != oldWidget.searchResultsNotifier;
  }

  static SearchData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SearchData>();
  }
}
