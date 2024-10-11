import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  final Locale selectedLocale;
  final ValueChanged<Locale> onChanged;

  const LanguageDropdown({
    super.key,
    required this.selectedLocale,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: selectedLocale,
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      items: const [
        DropdownMenuItem(
          value: Locale('en'),
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: Locale('uk'),
          child: Text('Українська'),
        ),
      ],
      onChanged: (Locale? newLocale) {
        if (newLocale != null) {
          onChanged(newLocale);
        }
      },
    );
  }
}
