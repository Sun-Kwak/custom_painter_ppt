import 'package:flutter/material.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Q: 이 앱에서 사용 된 총 CustomPainter Widget 의 수는?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('1.집'),
                 SizedBox(height: 10,),
                 Text('4.START 버튼'),
                 SizedBox(height: 10,),
                 Text('7.플로팅 버튼'),
                 SizedBox(height: 10,),
                 Text('10. 세 번째 격자모양'),
                 SizedBox(height: 10,),
                 Text('13. 참석자틀 안 아이콘들'),
               ],
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2.지붕 연기'),
                  SizedBox(height: 10,),
                  Text('5. CUSTOM PAINT 글자'),
                  SizedBox(height: 10,),
                  Text('8. 첫 번째 격자모양'),
                  SizedBox(height: 10,),
                  Text('11. DragDown 참석자틀'),
                  SizedBox(height: 10,),
                  Text('14. 참석자틀 Divider'),

                ],
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3.눈사람'),
                  SizedBox(height: 10,),
                  Text('6.말풍선'),
                  SizedBox(height: 10,),
                  Text('9. 두 번째 격자모양'),
                  SizedBox(height: 10,),
                  Text('12. 참석자 TextField 스타일'),
                  SizedBox(height: 10,),
                  Text('15. 정답버튼'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
