import 'package:flutter/material.dart';
import 'package:quoteapp/main.dart';
import 'package:share_plus/share_plus.dart';

class Funny extends StatefulWidget {
  const Funny({Key? key}) : super(key: key);

  @override
  State<Funny> createState() => _FunnyState();
}

class _FunnyState extends State<Funny> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Funny"),
        ),
        body: Stack(
          children: [
            Container(
              height: 720,
              width: double.infinity,
              child: Image.asset('assets/images/f (1).jpg',fit: BoxFit.cover,),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: funny.length,
              itemBuilder: (context, index) => Box(funny[index]),
            ),
          ],
        ),
      ),
    );
  }
  Widget Box(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Expanded(
        child: Container(
          height: 107,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff522B15),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$data',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: (){
                      Share.share(data);
                    },
                    child: Icon(
                      Icons.share,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
