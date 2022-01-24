import 'package:flutter_bloc_concepts/utility/exports.dart';

// class SecondPage extends StatefulWidget {
//   static const routeName = '/secondpageroute';

//   const SecondPage({Key? key}) : super(key: key);

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     final sttte = CounterCubit().state;
//     final counterState = context.watch<CounterCubit>().state;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Second Page"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Counter Value",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             // BlocBuilder<CounterCubit, CounterState>(
//             //   builder: (context, state) {
//             //     return Text(
//             //       state.counterValue.toString(),
//             //       style: const TextStyle(
//             //         fontSize: 50,
//             //         fontWeight: FontWeight.bold,
//             //       ),
//             //     );
//             //   },
//             // ),
//             Text(
//               sttte.counterValue.toString(),
//               style: const TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FloatingActionButton(
//                   onPressed: () {
//                     BlocProvider.of<CounterCubit>(context).decrement();
//                   },
//                   tooltip: "Decrement",
//                   child: const Icon(Icons.remove),
//                   heroTag: null,
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 FloatingActionButton(
//                   onPressed: () {
//                     BlocProvider.of<CounterCubit>(context).increment();
//                   },
//                   tooltip: "Increment",
//                   child: const Icon(Icons.add),
//                   heroTag: null,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text("home page"),
//               style: TextButton.styleFrom(
//                   primary: Colors.black, backgroundColor: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SecondPage extends StatelessWidget {
  static const routeName = '/secondpageroute';
  // final counterState = context.watch<CounterCubit>().state;

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final intenetState = context.watch<InternetCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingsScreen.routeName);
              },
              icon: const Icon(
                Icons.settings,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter Value",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            //! this method is wrong
            Builder(
              builder: (context) {
                if (intenetState is InternetConnectedMobile) {
                  return const ConnectionTextWidget(connectionType: "Mobile");
                } else if (intenetState is InternetConnectedWiFi) {
                  return const ConnectionTextWidget(connectionType: "WiFi");
                } else {
                  return const ConnectionTextWidget(
                      connectionType: "Disconnected");
                }
              },
            ),
            //! this method is correct
            BlocBuilder<InternetCubit, InternetState>(
              builder: (context, state) {
                print("****************************");
                print(InternetConnectedWiFi == InternetConnectedWiFi);
                print(InternetConnectedWiFi == InternetDisconnected);

                print("****************************");

                return state.when(
                  netLoading: () => const CircularProgressIndicator(),
                  netConnectedMobile: () =>
                      const ConnectionTextWidget(connectionType: "Mobile"),
                  netConnectedWiFi: () =>
                      const ConnectionTextWidget(connectionType: "WiFi"),
                  netDisconnected: () => const ConnectionTextWidget(
                      connectionType: "Disconnected"),
                );
              },
            ),

            // Text(
            //   sttte.counterValue.toString(),
            //   style: const TextStyle(
            //     fontSize: 50,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),

            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  tooltip: "Decrement",
                  child: const Icon(Icons.remove),
                  heroTag: null,
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  tooltip: "Increment",
                  child: const Icon(Icons.add),
                  heroTag: null,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("home page"),
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

class ConnectionTextWidget extends StatelessWidget {
  final String connectionType;
  const ConnectionTextWidget({
    Key? key,
    required this.connectionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      connectionType.toString(),
      style: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
