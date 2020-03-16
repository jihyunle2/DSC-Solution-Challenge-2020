import 'package:flutter/material.dart';
import 'package:dsc_solution_challenge_2020/components/containerBox.dart';
import 'package:dsc_solution_challenge_2020/models/profile.dart';

class ManagementPage extends StatelessWidget {
  final Profile profile;

  ManagementPage(@required this.profile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black87,
                  size: 40.0,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              ContainerBox(
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/pengsoo.jpeg'),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            profile.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            '${profile.age} / ${profile.gender}',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ContainerBox(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      '특이사항',
                      style: TextStyle(
                        fontSize: 27.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
                    SizedBox(height: 10.0,),
                    Text(
                      'abc', //데이터 가져오기
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                      ),),
                  ],
                )
                
                
              ),
              ContainerBox(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '최근 보고서',
                          style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black45,
                          size: 40.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      '2020/01/31 보고서',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),),
                  ],
                ),
              ),
              ContainerBox(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      '기본 정보',
                      style: TextStyle(
                        fontSize: 27.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
                    SizedBox(height: 10.0,),
                    Text(
                      '주소 ${profile.address}',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                      ),),
                  ],
                )
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}