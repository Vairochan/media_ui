import 'package:flutter/material.dart';
import 'package:media_ui/data/data.dart';
import 'package:media_ui/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text("Following",
            style: TextStyle(
                fontSize: 24.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
            ),),
        ),
        Container(
          height: 80.0,

          child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index){
                User user = users[index];
                return GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Theme.of(context).primaryColor),
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0
                        )]
                    ),
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        fit: BoxFit.cover,
                        image: AssetImage(user.profileImageUrl),),
                    ),
                  ),
                );
              }),
        )

      ],
    );
  }
}
