import 'package:flutter/material.dart';
import 'package:quoteapp/main.dart';
import 'package:share_plus/share_plus.dart';

class Life extends StatefulWidget {
  const Life({Key? key}) : super(key: key);

  @override
  State<Life> createState() => _LifeState();
}

class _LifeState extends State<Life> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Life"),
        ),
        body: Stack(
          children: [
            Container(
              height: 720,
              width: double.infinity,
              child: Image.asset('assets/images/Life .jpg',fit: BoxFit.cover,),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: life.length,
              itemBuilder: (context, index) => Box(life[index]),
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
          height: 100,
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
