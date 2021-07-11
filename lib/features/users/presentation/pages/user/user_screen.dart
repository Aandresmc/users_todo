import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../shared/routes/app_routes.dart';
import '../../../providers/user_provider.dart';
import '../users/users_bloc.dart';

class UserScreen extends StatefulWidget {
  const UserScreen._({Key key, @required this.arguments}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();

  final Map arguments;

  static Widget init(Map arguments) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => sl<UsersBloc>(),
          builder: (_, __) => UserScreen._(arguments: arguments),
        ),
      ],
    );
  }
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text('screen detail user'),
          ),
          FlatButton(
            color: Colors.purple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Text(
              'go users',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.UsersScreen);
            },
          ),
        ],
      ),
    );
  }
}
