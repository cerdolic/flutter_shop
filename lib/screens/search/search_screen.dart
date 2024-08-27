import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/screens/search/search_state_notifier.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/theme/text_styles.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(() {
      ref.read(searchProvider.notifier).search(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchResults = ref.watch(searchProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () {
                _searchController.clear();
                ref.read(searchProvider.notifier).clearSearch();
                FocusScope.of(context).unfocus();
              },
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
}
