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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              user.email,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              user.name,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              user.id,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
