import 'package:flutter/material.dart';

import '../main.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with RouteAware {
  @override
  void initState() {
    super.initState();

    debugPrint('initState() - FirstPage');
  }

  @override
  void didChangeDependencies() {
    //Inscreva-se no [RouteObserver] em `didChangeDependencies()`
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    //Sempre cancele a inscrição no `dispose()`
    routeObserver.unsubscribe(this);

    super.dispose();
  }

  @override
  void didPop() {
    debugPrint('Saiu da FirstPage');

    super.didPop();
  }

  @override
  void didPopNext() {
    debugPrint('Retornou para FirstPage');

    super.didPopNext();
  }

  @override
  void didPush() {
    debugPrint('Entrou na FirstPage');

    super.didPush();
  }

  @override
  void didPushNext() {
    debugPrint('Indo para a próxima tela - FirstPage');

    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/second');
          },
          child: const Text('Second Page'),
        ),
      ),
    );
  }
}
