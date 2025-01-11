import 'package:flutter/material.dart';
import 'package:siesta_t1/app/core/extensions/ctx.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconColor: context.inversPrimary,
        suffixIconColor: context.inversPrimary,
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.search_rounded,
          ),
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.sort,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        hintText: 'Search menu, restaurant or etc',
        hintStyle: context.bodySmall,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: context.outline,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: context.primary,
          ),
        ),
      ),
    );
  }
}
