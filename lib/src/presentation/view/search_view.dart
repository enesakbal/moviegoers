import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/components/appbar/custom_app_bar.dart';

@RoutePage()
class SearchView extends HookWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchBarController = useTextEditingController();

    return Scaffold(
      appBar: BaseAppBar(
        hasSearch: true,
        searchBarController: searchBarController,
      ),
      body: Container(),
    );
  }
}
