import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  final items = List<String>.generate(20, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(Icons.videocam_rounded),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('YouTubeアプリ'),
        actions: [
          SizedBox(
            width: 44,
            child: TextButton(
              onPressed: () {
                // TODO:
              },
              child: const Icon(Icons.search),
            ),
          ),
          SizedBox(
            width: 44,
            child: TextButton(
              onPressed: () {
                // TODO:
              },
              child: const Icon(Icons.more_vert),
            ),
          )
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Image.network(
                  'https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s100-c-k-c0x00ffffff-no-rj',
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  const Text(
                    'ゆうごチャンネル',
                  ),
                  TextButton(
                    onPressed: () {
                      // todo
                    },
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        const Text('登録する'),
                      ],
                    ),
                  ),
                ],
              )
            ]),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () async {
                    // TODO: 画面遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VideoDetailPage(),
                      ),
                    );
                  },
                  contentPadding: const EdgeInsets.all(8),
                  leading: Image.network(
                      'https://i.ytimg.com/vi_webp/6J-KK1Ft9NY/mqdefault.webp'),
                  title: Column(
                    children: [
                      const Text(
                        '【Flutter超入門】リストを作る方法',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            '267回再生',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            '5日前',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.more_vert),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
