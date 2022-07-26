import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality.dart';
import '../widgets/functionality_item.dart';

class CategoryGrid extends StatelessWidget {
  final List<Functionality> _shownFunctionalities;
  const CategoryGrid(this._shownFunctionalities, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        padding:
            const EdgeInsets.only(bottom: 30, left: 30, right: 30, top: 15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          maxCrossAxisExtent: 200,
        ),
        children: _shownFunctionalities
            .map((funData) => FunctionalityItem(
                functionality: funData))
            .toList(),
      ),
    );
  }
}
