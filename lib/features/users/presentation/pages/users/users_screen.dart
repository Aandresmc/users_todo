import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_todo/features/users/domain/entities/user_detail_todo_entity.dart';
import 'package:users_todo/features/users/presentation/pages/user/user_bloc.dart';
import 'package:users_todo/shared/widgets/widgets.module.dart';

import '../../../providers/user_provider.dart';
import '../../widgets/widgets.module.dart';
import 'users_bloc.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen._({Key key}) : super(key: key);

  @override
  _UsersScreenState createState() => _UsersScreenState();

  static Widget init() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => sl<UsersBloc>(),
          builder: (_, __) => UsersScreen._(),
        ),
      ],
    );
  }
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => afterLayout());
    super.initState();
  }

  void afterLayout() {
    context.read<UsersBloc>().getUsersTodo();
  }

  @override
  Widget build(BuildContext context) {
    final _bloc = context.watch<UsersBloc>();

    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text('screen users'),
          ),
          _bloc.usersTodo?.users.isEmpty || _bloc.usersTodoStateState == UserDetailTodoState.loading
              ? CustomLoading()
              : Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 18),
                    child: ListView.builder(
                      padding: const EdgeInsets.all(14),
                      itemCount: _bloc.usersTodo.users.length,
                      itemBuilder: (context, i) =>
                          CardUser(_bloc.usersTodo.users[i], _bloc.usersTodo.jobs.length),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
