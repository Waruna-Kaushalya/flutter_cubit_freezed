import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/features/feature_2_conectivity/logic/bloc/internet_bloc.dart';
import 'package:flutter_bloc_concepts/features/feature_2_conectivity/logic/cubit/internet_cubit.dart';
import 'package:flutter_bloc_concepts/routes/app_routes.dart';
import 'package:flutter_bloc_concepts/utility/app_bloc_observer.dart';
//
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'features/feature_1_settings/logic/cubit/settingscubit_cubit.dart';
import 'features/feature_3_counter/logic/cubit/counter_cubit.dart';
import 'features/feature_3_counter/presentation/screens/home_screen.dart';

void main() async {
  //?call natice codes
  WidgetsFlutterBinding.ensureInitialized();

  //?Select storage for store data using hydeated bloc package
  //?data storeing location selection is very importent.
  //?other wise data migh be loast when system clear data
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  final observer = AppBlocObserver();

  //?Good practice When you want to create a stand-alone instance which is an instance that doesn't depend on anything is to be created at the top inside the main function and then inject it into the app.

  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp(
      appRoutes: AppRoutes(),
      connectivity: Connectivity(),
    )),
    storage: storage,
    blocObserver: observer,
  );
}

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes;
  final Connectivity connectivity;

  const MyApp({
    Key? key,
    required this.appRoutes,
    required this.connectivity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //? Merges multiple BlocProvider widgets into one widget tree.
    //? MultiBlocProvider improves the readability and eliminates the need to nest multiple BlocProviders.

    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<SettingsCubit>(
          create: (context) => SettingsCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: MyHomePage.routeName,
        //?The route generator callback used when the app is navigated to a named route.
        onGenerateRoute: appRoutes.onGenerateRoute,
      ),
    );
  }
}
