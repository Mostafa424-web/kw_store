import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/features/main/presentation/manager/app_cubit/app_states.dart';

import '../manager/app_cubit/app_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: AppCubit.get(context)
                .screens[AppCubit.get(context).screenIndex],
            bottomNavigationBar: AppCubit.get(context).bottomNavigationBar(),
          );
        });
  }
}
