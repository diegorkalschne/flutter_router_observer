import 'package:flutter/material.dart';

import '../main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with RouteAware {
  @override
  void initState() {
    super.initState();

    debugPrint('initState() - SecondPage');
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);

    debugPrint('Dispose - SecondPage');

    super.dispose();
  }

  @override
  void didPop() {
    debugPrint('Saiu da SecondPage');

    super.didPop();
  }

  @override
  void didPopNext() {
    debugPrint('Retornou para SecondPage');

    super.didPopNext();
  }

  @override
  void didPush() {
    debugPrint('Entrou na SecondPage');

    super.didPush();
  }

  @override
  void didPushNext() {
    debugPrint('Indo para a próxima tela - SecondPage');

    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Using Route Observer',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
