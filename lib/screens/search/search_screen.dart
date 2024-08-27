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
  final TextEditingController _searchController = TextEditingController();
  List<String> searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_handleSearch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: _cancelSearch,
              child: Text(
                'Cancel',
                style: unitedNationsBlue_14_500,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 24),
            TextFormField(
              maxLines: 1,
              controller: _searchController,
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
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _handleSearch() {
    final text = _searchController.text.toLowerCase();
    searchResults.clear();
    if (text.isNotEmpty) {
      searchResults = searchPlaceholders
          .where((e) => e.toLowerCase().contains(text))
          .toList();
    }
    setState(() {});
  }

  void _cancelSearch() {
    setState(() {
      _searchController.clear();
    });
  }
}
