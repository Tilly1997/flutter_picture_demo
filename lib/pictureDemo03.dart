import 'package:flutter/material.dart';

class pictureDemo03 extends StatefulWidget {
  @override
  _pictureDemo03 createState() => _pictureDemo03();
}

class _pictureDemo03 extends State<pictureDemo03> {
  /*定義按鈕的外觀*/
  final ButtonStyle Style = ElevatedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 20,
      ),
      primary: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          color: Color(0xFF5B6B8F),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 40,
              ),
              //標題
              Row(
                children: [
                  IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    '上/下肢腳踏車運動',
                    style: TextStyle(
                        color: Colors.white,
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
                    '翻滾模式結果',
                    style: TextStyle(
                        color: Colors.blue[100],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
              Text(''),
              Row(
                children: [
                  Spacer(),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '運動時間',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          '30',
                          style: TextStyle(
                              color: Colors.blue[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          '分',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '運動距離',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          '20',
                          style: TextStyle(
                              color: Colors.blue[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          '公里',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '預計消耗卡路里',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          '200',
                          style: TextStyle(
                              color: Colors.blue[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          '大卡',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Spacer(),
            Text(
              '目前阻力：',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              '3',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Spacer()
          ],
        ),

        /*我沒用過GridView，所以不確定是不是這樣，以下是參考官方文件的範例
        * PS:如果不是一整頁，就需要設定高度
        * 參考資料：https://flutter.dev/docs/cookbook/lists/grid-lists*/
        Container(
          height: 100,
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 5,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(50, (index) {
              return Container(
                color: Colors.yellow[100],
                alignment: Alignment.center,
                child: Text(
                  'GridView $index',
                  // style: Theme.of(context).textTheme.headline5,
                ),
              );
            }),
          ),
        ),
        Row(children: [
          Spacer(),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/SportLess.png'), fit: BoxFit.fill),
            ),
            alignment: Alignment.center,
            child: FlatButton(
              onPressed: () {},
              child: Text(''),
              color: Colors.transparent,
            ),
          ),
          Spacer(),
          Text(
            '阻力調整',
            style: TextStyle(
                color: Color(0xFF5B6B8F),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Spacer(),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/SportAdd.png'), fit: BoxFit.fill),
            ),
            alignment: Alignment.center,
            child: FlatButton(
              onPressed: () {},
              child: Text(''),
              color: Colors.transparent,
            ),
          ),
          Spacer()
        ]),
        ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 250),
            child: ElevatedButton(
                style: Style,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pictureDemo03()));
                },
                child: Text(
                  '停止運動',
                  style: TextStyle(color: Colors.white),
                )))
      ],
    )));
  }
}
