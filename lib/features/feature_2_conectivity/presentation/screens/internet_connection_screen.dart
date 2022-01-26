import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/features/feature_1_settings/presentation/screens/settings_screen.dart';

import 'package:flutter_bloc_concepts/features/feature_2_conectivity/logic/cubit/internet_cubit.dart';
import 'package:flutter_bloc_concepts/utility/constants/enums.dart';

class InternetConnectionTestScreen extends StatefulWidget {
  static const routeName = '/internetConnectionScreen';

  const InternetConnectionTestScreen({Key? key}) : super(key: key);

  @override
  _InternetConnectionTestScreenState createState() =>
      _InternetConnectionTestScreenState();
}

class _InternetConnectionTestScreenState
    extends State<InternetConnectionTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Check"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingsScreen.routeName);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Internt Connection"),
            BlocBuilder<InternetCubit, InternetState>(
              builder: (context, state) {
                // return state.when(
                //   netLoading: () {
                //     return const CircularProgressIndicator();
                //   },
                //   netConnectedMobile: () => const Text("Mobile"),
                //   netConnectedWiFi: () => const Text("WiFi"),
                //   netDisconnected: () => const Text("Disconnected"),
                // );
                if (state is InternetConnected &&
                    state.connectionType == ConnectionType.wifi) {
                  return const Text("Wifi");
                } else if (state is InternetDisconnected) {
                  return const Text("Disconnected");
                }
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
