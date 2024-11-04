import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.person,
                    size: 24,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.settings_outlined,
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Guest',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Widget Grid View', 
                    style: TextStyle(
                      fontSize: 22),
                      ), 
                  Icon(Icons.arrow_forward)
                ],
              ),
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(_items[index]['image'],
                            fit: BoxFit.cover,
                            height: 120,
                            width: 115,
                            ),
                          SizedBox(height: 10),
                          Text(_items[index]['artist'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                          SizedBox(height: 5),
                          Text(_items[index]['song']),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Widget List View', 
                    style: TextStyle(
                      fontSize: 22),
                      ), 
                  Icon(Icons.arrow_forward)
                ],
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) => Container(
                    height: 120,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(_items[index]['image'],
                            fit: BoxFit.cover,
                            height: 120,
                            width: 115,
                            ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_items[index]['artist'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              SizedBox(height: 5),
                              Text(_items[index]['description'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.playlist_add_outlined),
                                      SizedBox(width: 5),
                                      Text(_items[index]['time']),
                                    ],
                                  ),
                                  Icon(Icons.play_arrow),
                                ],
                              )
                            ]
                          ),
                        )
                      ]
                    ),
                  )
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> _items = List.generate(
      5,
      (index) => {
            "artist": "Artist $index",
            "song": "Song $index",
            "headline": "Headline $index",
            "description": "Description $index duis aute irure dolor in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim irure dolor in reprehenderit in voluptate.",
            "time": "Today • ${23 - index} min",
            'image': 'https://picsum.photos/250?image=$index',
          });
}
