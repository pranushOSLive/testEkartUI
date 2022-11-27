// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchField extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  SearchField({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      focusNode: FocusNode(canRequestFocus: false),
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          labelText: 'serach here for products and more...',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 223, 210, 210)),
            borderRadius: BorderRadius.circular(255),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2, color: Color.fromARGB(255, 156, 151, 151)),
            borderRadius: BorderRadius.circular(25),
          )),
    );
  }
}
