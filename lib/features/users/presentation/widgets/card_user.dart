import 'package:flutter/material.dart';

import '../../../../shared/utils/calculate_age.dart';
import '../../domain/entities/user_entity.dart';

class CardUser extends StatefulWidget {
  final User user;
  final int cantJobs;

  CardUser(this.user, this.cantJobs);

  @override
  _CardUserState createState() => _CardUserState();
}

class _CardUserState extends State<CardUser> {
  @override
  Widget build(BuildContext context) {
    // final _size = MediaQuery.of(context).size;
    // final _theme = Theme.of(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), side: BorderSide(color: Colors.red, width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(child: Center(child: Text(widget.user.name))),
              Expanded(child: Center(child: Text(widget.user.lastName))),
            ],
          ),
          Row(
            children: [
              Expanded(child: Center(child: Text(widget.user.birthDate))),
              Expanded(child: Center(child: Text('${calculateAge(widget.user.birthDate)} años'))),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('${widget.cantJobs}'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
