import 'package:cube_transition/cube_transition.dart';
import 'package:flutter/material.dart';
import 'package:incodnito/services/story_view/story_view.dart';
//import 'package:social_media_widgets/instagram_story_swipe.dart';

import 'package:incodnito/ui/widgets/postDetails.dart';
import 'package:incodnito/utils/uidata.dart';

class Feed extends StatefulWidget {
  static const String id = 'Feed';
  Feed({Key key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List data = [
    [null, 'user1'],
    [null, 'user2'],
    [null, 'user3'],
    [null, 'user4'],
    [null, 'user5']
  ];

  final controller = StoryController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: kappBarColor,
            primary: true,
            floating: true,
            snap: false,
            pinned: false,
            centerTitle: true,
            title: Text(
              "Incodnito",
              style: TextStyle(
                color: kappBarTextColor,
                fontSize: 30.0,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.width * 0.2 + 24,
                      child: FutureBuilder(
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              primary: false,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, top: 8.0, bottom: 16.0),
                                  child: InkWell(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.2,
                                      child: Stack(
                                        children: <Widget>[
                                          ClipOval(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          MoreStories()),
                                                );
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: Image.network(
                                                            'https://cdn.pixabay.com/photo/2017/11/10/05/48/user-2935527_960_720.png')
                                                        .image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return PostDetails(
                          data: data[index],
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// _onInstagramStorySwipeClicked(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => InstagramStorySwipe(
//         initialPage: 0,
//         children: <Widget>[
//           MoreStories(),
//         ],
//       ),
//     ),
//   );
// }

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

//TODO:on clicking first story again should go back to previous
  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "I guess you'd love to see more of our food. That's great.",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Nice!\n\nTap to continue.",
            backgroundColor: Colors.red,
            textStyle: TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
          StoryItem.pageImage(
            url:
                "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            caption: "Still sampling",
            controller: storyController,
          ),
          StoryItem.pageImage(
              url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
              caption: "Working with gifs",
              controller: storyController),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "Hello, from the other side",
            controller: storyController,
          ),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "Hello, from the other side2",
            controller: storyController,
          ),
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        inline: false,
        onComplete: () {
          print("Completed a cycle");

          Navigator.pop(context);
          Navigator.of(context).push(
            CubePageRoute(
              enterPage: MoreStories(),
              exitPage: this.widget,
              duration: const Duration(milliseconds: 500),
            ),
          );
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}
