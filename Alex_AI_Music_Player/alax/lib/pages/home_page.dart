import 'dart:html';

import 'package:alax/model/radio.dart';
import 'package:alax/utilis/ai_util.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/web/audioplayers_web.dart';
import 'package:audioplayers/audioplayers_api.dart' ;
import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePage> {
  late List<MyRadio> radios;

  MyRadio _selectedRadio;
  // Color _selectedColor;
  bool _isPlaying = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
      fetchradios();}
  
    // _audioPlayer.onPlayerStateChanged.listen((event) {
    //   if (event == AudioCache.PLa) {
    //     _isPlaying = true;
    //   } else {
    //     _isPlaying = false;
    //   }
    //   setState(() {});
    // });
  

  fetchradios() async {
    final radioJson = await rootBundle.loadString("assets/radio.json");
    radios = MyRadioList.fromJson(radioJson).radios;
    print(radios);
    setState(() {});
  }

  _playMusic(String url) {
    _audioPlayer.play(url);
    _selectedRadio = radios.firstWhere((element) => element.url == url);
    print(_selectedRadio.name);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        /*drawer smjh m nhi aya*/
        body: Stack(
          children: [
            VxAnimatedBox()
                .size(context.screenWidth, context.screenHeight)
                .withGradient(LinearGradient(
                    colors: [AIUtil.primarcolor1, AIUtil.primarcolor2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight))
                .make(),
            AppBar(
              title: 'Alex'.text.xl4.bold.white.make().shimmer(
                  primaryColor: Colors.black54, secondaryColor: Colors.white),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
            ).h(100).p12(),
            VxSwiper.builder(
              itemCount: radios.length,
              aspectRatio: 1.0,
              enlargeCenterPage: true,
              itemBuilder: (context, index) {
                final rad = radios[index];
                return VxBox(
                        child: ZStack([
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: VxBox(
                            child:
                                rad.category.text.uppercase.black.make().px20())
                        .height(40)
                        .white
                        .alignCenter
                        .withRounded(value: 50.0)
                        .make(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: VStack(
                      [
                        rad.name.text.xl3.white.bold.make(),
                        5.heightBox,
                        rad.tagline.text.sm.white.semiBold.make(),
                        5.heightBox,
                      ],
                      crossAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: [
                        Icon(
                          CupertinoIcons.play_circle,
                          color: Colors.white,
                        ).iconSize(100.0),
                        10.heightBox,
                        "Double Click To PLay".text.gray300.make(),
                      ].vStack())
                ]))
                    .bgImage(DecorationImage(
                        image: NetworkImage(rad.image),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken)))
                    .border(color: Colors.white, width: 5.0)
                    .withRounded(value: 60.0)
                    .make()
                    .onDoubleTap(() {
                      _playMusic(rad.url);
                    })
                    .p16()
                    .centered();
              },
            ).centered(),
            Align(
                alignment: Alignment.bottomCenter,
                child: [

                  if(_isPlaying)
                  ("playing " + _selectedRadio.name).text.makeCentered()
                  
                  
                  
                  ,Icon(
                    _isPlaying?CupertinoIcons.stop_circle:CupertinoIcons.play_circle,
                  color: Colors.white,
                  size: 60.0,
                ).onInkTap(() {
                  if(_isPlaying){
                    _audioPlayer.stop();
                  }else{
                    _playMusic(_selectedRadio.url);
                  }
                })].vStack()
                ).pOnly(bottom: context.percentHeight * 2)
          ],
          fit: StackFit.expand,
        ));
  }
}
