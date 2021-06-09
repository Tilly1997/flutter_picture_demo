import 'package:flutter/material.dart';
import 'package:flutter_picture_demo/pictureDemo03.dart';

class pictureDemo02 extends StatefulWidget {
  @override
  _pictureDemo02 createState() => _pictureDemo02();
}

class _pictureDemo02 extends State<pictureDemo02> {
  /*定義按鈕的外觀*/
  final ButtonStyle Style = ElevatedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 20,
      ),
      primary: Color(0xFF5B6B8F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //撐開布局，模擬出AppBar的感覺
              Container(
                height: 40,
              ),
              //標題
              Row(
                children: [
                  IconButton(
                      color: Color(0xFF5B6B8F),
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    '上/下肢腳踏車運動',
                    style: TextStyle(
                        color: Color(0xFF5B6B8F),
                        /*
                    * 顏色設定方式有兩種
                    * 1.color:Colors.white
                    * =>直接用預設好的顏色
                    * 2.color: Color(0xFF5B6B8F)
                    * =>自訂色碼，格式是:0xFF+色碼
                    * */
                        //粗體
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),

                  //Spacer():Row()專用，有點類似word裡的tab符號，可以幫你撐開或對齊元件
                  Spacer()
                ],
              ),
              Text(''),

              Row(
                children: [
                  Text(
                    '運動時間',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer()
                ],
              ),

              /*這是一種土法煉鋼方式，目的是為了讓後方的單位(suffixText)在沒有焦點時也能出現*/
              /*參考資料:https://stackoverflow.com/questions/58819979/is-there-a-way-to-create-a-text-field-with-a-prefix-that-is-always-visible-in-fl*/
              Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Builder(builder: (context) {
                    //未選中顯示這個
                    return Row(
                      children: [
                        Spacer(),
                        Text(
                          '分',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    );
                  }),
                  //選中就顯示這個
                  TextField(
                    //文字置中
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixText: '分',
                      suffixStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Text(''),
              Row(
                children: [
                  Text(
                    '運動距離',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer()
                ],
              ),

              Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Builder(builder: (context) {
                    return Row(
                      children: [
                        Spacer(),
                        Text(
                          '公里',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    );
                  }),
                  TextField(
                    //文字置中
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixText: '公里',
                      suffixStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Text(''),
              Row(
                children: [
                  Text(
                    '預計消耗卡路里',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer()
                ],
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Builder(builder: (context) {
                    return Row(
                      children: [
                        Spacer(),
                        Text(
                          '大卡',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    );
                  }),
                  TextField(
                    //文字置中
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixText: '大卡',
                      suffixStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              //按鈕
              ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 250),
                  child: ElevatedButton(
                      style: Style,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pictureDemo03()));
                      },
                      child: Text(
                        '開始運動',
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
