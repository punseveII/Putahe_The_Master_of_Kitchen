import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:putahe/homepage/commentBox/comment_one.dart';
import 'package:putahe/homepage/commentBox/comment_two.dart';
import 'package:putahe/homepage/commentBox/comment_three.dart';
import 'package:putahe/homepage/commentBox/comment_four.dart';
import 'package:putahe/homepage/navigation_bar.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 250, 250, 250),
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 156,
            flexibleSpace: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                  color: Color.fromARGB(255, 242, 174, 39),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(60),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Find Something",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0)),
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.mic_none),
                    ),
                  ),
                ))),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            TextField(
              controller: _textController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "What's New?",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: const Icon(Icons.edit),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    onPressed: () {},
                    color: Colors.grey.shade100,
                    child: const Text("Photo",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    onPressed: () {},
                    color: Colors.grey.shade100,
                    child: const Text("Video",
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            //profile
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://i.cartoonnetwork.com/orchestrator/839543_009_640x360.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Earl Michael Filosopo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  right: 260,
                ),
                child: Column(
                  children: const [
                    Text("Looks Tasty"),
                  ],
                ),
              ),
            ),
            //first container
            Column(
              children: [
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i0.wp.com/www.angsarap.net/wp-content/uploads/2021/08/Seafood-Pancit-Bihon-Guisado-Wide.jpg?fit=1080%2C720&ssl=1'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const LikeButton(
                          likeCount: 199,
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Center(
                          //comment
                          child: MaterialButton(
                            minWidth: 100,
                            height: 40,
                            color: Colors.white,
                            child: const Text('Comment',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const TestMe()));
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        LikeButton(
                          //share
                          likeBuilder: (isTapped) {
                            return Icon(
                              Icons.share,
                              color: isTapped
                                  ? Colors.green.shade400
                                  : Colors.grey,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Timmy John Pintor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //container 2
            Container(
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/R.6094a92c8ab37eec0daf4c7607d9d386?rik=WstsuxkZAhgWsA&riu=http%3a%2f%2fmedia3.s-nbcnews.com%2fi%2fnewscms%2f2016_37%2f1158018%2fmeatballs-today-160914-tease-02_9473265cce330fbbe87dc3cad7ac7654.jpg&ehk=5SSxwB3A6IGhfEcWJ3dReMLBXa%2bj4YdfddkCcJ0GN%2fQ%3d&risl=&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      //react 2
                      color: Colors.white,
                      child: const LikeButton(
                        likeCount: 9,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Center(
                      child: MaterialButton(
                        //comment 2
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        elevation: 5.0,
                        minWidth: 100,
                        height: 40,
                        color: Colors.white,
                        child: const Text('Comment',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TestMeTwo()));
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    LikeButton(
                      //share 2
                      likeBuilder: (isTapped) {
                        return Icon(
                          Icons.share,
                          color: isTapped ? Colors.green.shade400 : Colors.grey,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.cartoonnetwork.com/orchestrator/839543_009_640x360.jpg'))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Earl Michael Filosopo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 100),
                child: Column(
                  children: const [
                    Text("Just started cooking in Putahe today!"),
                  ],
                ),
              ),
            ),
            //container 3
            Container(
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/R.500f2836de764fbd722129aa2e43d1e2?rik=YQyPN3ynNCxecg&riu=http%3a%2f%2fwww.fromthepennyjar.com%2fwp-content%2fuploads%2f2017%2f01%2fadobo.png&ehk=W1SoKLk49SdlH%2fk59PXAvlrS2g6iWderkRwtVSdhaEE%3d&risl=&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      //react 3
                      color: Colors.white,
                      child: const LikeButton(
                        likeCount: 19,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Center(
                      //comment 3
                      child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        elevation: 5.0,
                        minWidth: 100,
                        height: 40,
                        color: Colors.white,
                        child: const Text('Comment',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TestMeThree()));
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    //share 3
                    LikeButton(
                      likeBuilder: (isTapped) {
                        return Icon(
                          Icons.share,
                          color: isTapped ? Colors.green.shade400 : Colors.grey,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.NGZUtk2_3hcN9LI2xxnJrQHaEK?pid=ImgDet&rs=1'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Ella Punay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 260),
                child: Column(
                  children: const [
                    Text("Fried Rice"),
                  ],
                ),
              ),
            ),
            //container 4
            Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/R.9ebac021e22891d1317cc35f0a15dfc9?rik=2bWJze1wYicVEw&riu=http%3a%2f%2fwww.gimmesomeoven.com%2fwp-content%2fuploads%2f2012%2f11%2fpork-fried-rice-1.jpg&ehk=9weuC12ojX5GCujMxbuaHrQ6X4WMNCPIcfdbLdGi5x0%3d&risl=&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      //react 4
                      color: Colors.white,
                      child: const LikeButton(
                        likeCount: 99,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Center(
                      child: MaterialButton(
                        //comment 4
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        elevation: 5.0,
                        minWidth: 100,
                        height: 40,
                        color: Colors.white,
                        child: const Text('Comment',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TestMeFour()));
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    LikeButton(
                      //share 4
                      likeBuilder: (isTapped) {
                        return Icon(
                          Icons.share,
                          color: isTapped ? Colors.green.shade400 : Colors.grey,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
