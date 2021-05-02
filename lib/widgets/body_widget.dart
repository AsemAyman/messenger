
import 'package:flutter/material.dart';

Widget MyBody(ctx) {
  return Container(
    color: Theme.of(ctx).primaryColor,
    child: SingleChildScrollView(
      child: Column(
        children: [
          searchBuilder(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    personAvatarBuilder(
                      isOnline: false,
                      myIcon: Icon(
                        Icons.video_call_rounded,
                        color: Colors.black,
                        size: 28,
                      ),
                      myColor: Colors.grey.withOpacity(.2),
                    ),
                    storyNamesBuilder("Create Room")
                  ],
                ),
                Column(
                  children: [
                    personAvatarBuilder(),
                    Container(
                        width: (50),
                        child: storyNamesBuilder('pjhmhiuhh hmijhhkbg'))
                  ],
                ),
                Column(
                  children: [
                    personAvatarBuilder(),
                    Container(
                        width: (50), child: storyNamesBuilder('ystrtr rufget'))
                  ],
                ),
                Column(
                  children: [
                    personAvatarBuilder(),
                    Container(
                        width: (50), child: storyNamesBuilder('stcrtv f4e3'))
                  ],
                ),
                Column(
                  children: [
                    personAvatarBuilder(),
                    Container(
                        width: (50),
                        child: storyNamesBuilder('wdq fqewfjnvjnAd'))
                  ],
                ),
                Column(
                  children: [
                    personAvatarBuilder(),
                    Container(
                        width: (50),
                        child: storyNamesBuilder('cwtrveetrbge ugurthrty'))
                  ],
                ),
              ],
            ),
          ),
         SizedBox(height: 10,),
         chatCardsBuilder(ctx:ctx,isOnline:false,myColor: Colors.red,name:'Asfsafsad',text: 'buhbiasnin',time:'22:56 AM'),
          chatCardsBuilder(ctx:ctx,myColor:Colors.yellow,name:'D8bnfjh',text:'junnnsn9hnh8uhdjijfdh8uhd' ,time:'6:8 AM' ),
          chatCardsBuilder(ctx:ctx,myColor:Colors.black,name:'hn8unsda ds8ufh',text: "ijhdas h0u8hsad",time:'6:8 PM' ),
          chatCardsBuilder(ctx:ctx,myColor:Colors.blueGrey,name:"ijnsdfh iuhdsa",text:"ijasdnf8b8uhdasbbfn8jasnadsfads" ,time: 'Now'),
          chatCardsBuilder(ctx:ctx,isOnline:false,myColor:Colors.purple,name:"ihuhsd 0hnodfhu",text:"9iijrbybsd8nsadj9uj" ,time: '9:8 AM'),
          chatCardsBuilder(ctx:ctx,myColor:Colors.green,name:'hds8d n8hfd8h',text: "m9sdn9nsadfnasds",time:'7:8 AM' ),
          chatCardsBuilder(ctx:ctx,isOnline:false,myColor:Colors.red,name:"n8usd8uh u8dhfn",text:"ojnsdanf9usdfasdd" ,time:'9:7 AM' ),
          chatCardsBuilder(ctx:ctx,isOnline:false,myColor:Colors.tealAccent,name:'ijninads sdfsdf',text: "ujj9fhhsadih9jnsdd",time:'8:22 PM'),
          chatCardsBuilder(ctx:ctx,myColor:Colors.yellow,name:'D8bnfjh',text:'junnnsn9hnh8uhdjijfdh8uhd' ,time:'6:8 AM' ),
          chatCardsBuilder(ctx:ctx,myColor:Colors.black,name:'hn8unsda ds8ufh',text: "ijhdas h0u8hsad",time:'6:8 PM' ),

        ],
      ),
    ),
  );
}

Card chatCardsBuilder({ctx,myColor:Colors.orange,name,text,time,isOnline:true}) {
  return Card(
    color: Theme.of(ctx).primaryColor,
    elevation: 0.0,
    child: Row(
      children: [
        personAvatarBuilder(myColor: myColor,isOnline: isOnline),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,maxLines: 1),
            SizedBox(
              height: 5,
            ),
            Text(text,maxLines: 1,),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            SizedBox(height: 20),
            Text(time,maxLines: 1,),
          ],
        ),
      ],
    ),
  );
}

Container personAvatarBuilder(
    {myIcon = null, myColor = Colors.orange, bool isOnline = true}) {
  return Container(
    margin: EdgeInsets.only(left: 12),
    child: Stack(
      alignment: Alignment(.9, .8),
      children: isOnline == true
          ? [
              CircleAvatar(
                radius: 28,
                child: myIcon,
                backgroundColor: myColor,
              ),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
              ),
            ]
          : [
              CircleAvatar(
                radius: 28,
                child: myIcon,
                backgroundColor: myColor,
              ),
            ],
    ),
  );
}

Container searchBuilder() {
  return Container(
    margin: EdgeInsets.all(12),
    width: double.infinity,
    child: MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.grey[200],
      elevation: 0.0,
      height: 40,
      child: Row(
        children: [
          Icon(
            Icons.search_sharp,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Searsh',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 16),
          )
        ],
      ),
      onPressed: () {},
    ),
  );
}

Widget storyNamesBuilder(text) {
  int splitIndex = text.indexOf(" ");
  String fristName = text.substring(0, splitIndex);
  String scondName = text.substring(splitIndex + 1);
  return Column(
    children: [
      Text(
        fristName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      Text(scondName, maxLines: 1),
    ],
  );
}
