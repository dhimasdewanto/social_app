import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../auth/domain/entities/user.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 150.0,
            backgroundColor: Colors.black,
            actions: [
              FlatButton.icon(
                onPressed: () {/* ... */},
                colorBrightness: Brightness.dark,
                label: const Text("My Article"),
                icon: const Icon(Icons.event_note),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(user.name),
                  Text(
                    user.email,
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ],
              ),
              centerTitle: true,
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.black,
                      Colors.grey[900],
                      Colors.grey[800],
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text(
                    "Index: $index",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Text(
      //         user.email,
      //         style: Theme.of(context).textTheme.headline5,
      //       ),
      //       Text(
      //         user.name,
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //       Text(
      //         user.id,
      //         style: Theme.of(context).textTheme.headline6,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
