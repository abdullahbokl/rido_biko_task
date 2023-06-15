import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/cubits/categories_list_cubit/categories_list_cubit.dart';
import '../manager/cubits/first_collection_indicator_cubit/first_collection_indicator_cubit.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/collections_column.dart';
import '../widgets/logo.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FirstCollectionIndicatorCubit()),
        BlocProvider(create: (context) => CategoriesListCubit()),
      ],
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final statusBarHeight = MediaQuery.of(context).padding.top;
            return Container(
              color: Colors.white,
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: statusBarHeight + 15),
                  const Logo(),
                  const SizedBox(height: 30),
                  const CategoriesListView(),
                  const SizedBox(height: 5),
                  const Expanded(
                    child: CollectionsColumn(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
