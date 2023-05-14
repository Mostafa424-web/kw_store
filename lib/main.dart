import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kw_store/core/utils/services_locator.dart';
import 'package:kw_store/features/main/presentation/manager/app_cubit/app_cubit.dart';
import 'package:kw_store/features/main/presentation/view/main_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return AppCubit();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: [
          Locale("en", "US"),
          Locale('ar', 'AE'),
        ],
        // locale: Locale('ar', 'AE'),
        home: MainScreen(),
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    );
  }
}
