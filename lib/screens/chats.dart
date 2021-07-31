import 'package:flutter/material.dart';

/// Reference:
/// https://github.com/alifiarahmah/DSCFlutter/blob/main/DSCFlutter_AlifiaRahmah/lib/chats.dart

class ChatMessage{
  Widget messageContent;
  String messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}

class ChatScreen extends StatefulWidget{
@override
  _ChatScreen createState() => _ChatScreen();
}

class _ChatScreen extends State<ChatScreen>{
  List<ChatMessage> messages = [
    ChatMessage(messageContent: Text("Lihat berita ini! Berita ini banyak dibicarakan orang-orang!"), messageType: "receiver"),
    ChatMessage(messageContent: Image.asset("images/stock_hoaxbuster.png",
      height: 200), messageType: "receiver"),
    ChatMessage(messageContent: Text("Menurut kamu, apakah berita ini hoaks?"), messageType: "receiver"),
    ChatMessage(messageContent: Text("Tolong ketik Ya/Tidak untuk petunjuk selanjutnya"), messageType: "receiver")
  ];

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.only(left: 20),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 2,),
                CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.person, color: Colors.white,)),
                SizedBox(width: 12,),
                Expanded(
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Edufun Bot",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.w600, color: Colors.black)),
                          Text("Online",style: TextStyle(color: Colors.black, fontSize: 13),),
                        ],
                      ),
                    )
                ),
                IconButton(icon: Icon(Icons.more_vert,color: Colors.white), onPressed: (){},),
              ],
            ),
          ),
        ),
      ),

      body: Stack(
        children: [

          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10,bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, i){
                return Container(
                  padding: EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[i].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // bgcolors chat bubble
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      // txtcolor chat bubble
                      child: messages[i].messageContent /*Text(
                        messages[i].messageContent,
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                      )*/,
                    ),
                  )
                );
              }
          ),

          // Write Message
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Expanded(
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          border: InputBorder.none
                      ),
                    ),
                  ),

                  SizedBox(width: 15),

                  IconButton(
                      onPressed: () {
                        if (myController.text.length != 0) {
                          messages.add(ChatMessage(messageContent: Text(myController.text), messageType: "sender"));
                          setState(() {});
                          myController.text = '';
                        }
                      },
                      icon: Icon(Icons.send,color: Colors.grey)
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}