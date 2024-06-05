import 'package:diamond_store_app/core/assets/assets.gen.dart';
import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: TextFormField(
        controller: _searchController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search Game',
          hintStyle: const TextStyle(
            fontSize: 11,
            color: AppsColors.grey,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.icons.search.path),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppsColors.black,
            ),
          ),
          contentPadding:
              const EdgeInsets.only(top: 20, left: 10, right: 10),
        ),
        cursorColor: AppsColors.black,
        style: const TextStyle(
          fontSize: 11,
          color: Colors.black,
        ),
      ),
    );
  }
}
