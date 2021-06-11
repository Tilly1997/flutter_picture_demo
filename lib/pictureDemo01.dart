import 'package:flutter/material.dart';
import 'package:flutter_picture_demo/pictureDemo02.dart';

class pictureDemo01 extends StatefulWidget {
  @override
  _pictureDemo01 createState() => _pictureDemo01();
}

bool _controlImage = true;

class _pictureDemo01 extends State<pictureDemo01> {
  bool _checkBoxControl = true;

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
    //List內容(也可以直接寫在下面)
    List<Widget> list = <Widget>[
      InkWell(
        child: ListTile(
          title: Container(
              height: 150,
              width: 150,
              child: _controlImage == true
                  ? Image.asset('assets/b1.png')
                  : Image.asset('assets/b01.png')),
        ),
        onTap: () {
          print('第一個');
          setState(() {
            _controlImage = !_controlImage;
          });
        },
      ),
      InkWell(
        child: ListTile(
          title: Text(
            '測試標題二',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          subtitle: Text('測試內容二'),
          leading: Icon(
            Icons.event_seat,
            color: Colors.blue,
          ),
        ),
        onTap: () {
          print('第二個');
        },
      ),
      InkWell(
        child: ListTile(
          title: Text(
            '測試標題三',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          subtitle: Text('測試內容三'),
          leading: Icon(
            Icons.event_seat,
            color: Colors.blue,
          ),
        ),
        onTap: () {
          print('第三個');
        },
      ),
      InkWell(
        child: ListTile(
          title: Text(
            '測試標題四',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          subtitle: Text('測試內容四'),
          leading: Icon(
            Icons.event_seat,
            color: Colors.blue,
          ),
        ),
        onTap: () {
          print('第四個');
        },
      ),
      InkWell(
        child: ListTile(
          title: Text(
            '測試標題',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          subtitle: Text('測試內容二'),
          leading: Icon(
            Icons.event_seat,
            color: Colors.blue,
          ),
        ),
        onTap: () {
          print('第五個');
        },
      ),
    ];
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text('title'),
//automaticallyImplyLeading: false, //關閉返回箭頭
      ),
      為了模擬畫面上的標題，所以把預設的AppBar砍掉自己寫
       */
      body: Container(
        padding: EdgeInsets.all(10.0),
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
                Spacer(),
                Checkbox(
                  value: _checkBoxControl,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxControl = value;
                    });
                  },
                ),
                Text('藍牙已連接',
                    style: TextStyle(color: Colors.grey, fontSize: 20)),
                Spacer(),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/robot1.png')),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Text(
                  '請選擇運動模式',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer()
              ],
            ),
            //List
            Container(
                //list元件需要限制高度
                height: 250,
                alignment: Alignment.center,
                child: Scrollbar(
                  child: ListView(
                    /*設定List的內容*/
                    children: list,
                  ),
                )),
            //按鈕
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 250),
                child: ElevatedButton(
                    style: Style,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pictureDemo02()));
                    },
                    child: Text(
                      '下一步',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
