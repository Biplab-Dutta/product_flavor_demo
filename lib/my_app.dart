import 'package:flutter/material.dart';
import 'package:product_flavor_demo/app_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.isAdminApp ? 'Admin App' : 'Non-admin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          AppConfig.isAdminApp ? _AdminBody(key: key) : _NonAdminBody(key: key),
    );
  }
}

class _AdminBody extends StatelessWidget {
  const _AdminBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is the admin UI.',
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}

class _NonAdminBody extends StatelessWidget {
  const _NonAdminBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is the non-admin UI.',
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
