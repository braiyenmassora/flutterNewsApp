import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutterAppNews/helper/data.dart';
import 'package:flutterAppNews/helper/news.dart';
import 'package:flutterAppNews/models/article_model.dart';
// import 'package:flutterAppNews/models/category_model.dart';
import 'package:flutterAppNews/pages/view_article.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    // categories = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Flutter PortalBerita",
          style: TextStyle(
              fontFamily: 'NeoSans',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white70,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // list category
                    // Container(
                    //   height: 70,
                    //   child: ListView.builder(
                    //     itemCount: categories.length,
                    //     shrinkWrap: true,
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (context, index) {
                    //       return CategoryList(
                    //         imgUrl: categories[index].imgUrl,
                    //         categoryName: categories[index].categoryName,
                    //       );
                    //     },
                    //   ),
                    // ),
                    // list BlogList
                    Container(
                      child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogList(
                            imgUrl: articles[index].urlToImage,
                            title: articles[index].title,
                            desc: articles[index].description,
                            url: articles[index].url,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final imgUrl, categoryName;
  CategoryList({this.imgUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                  imageUrl: imgUrl, width: 120, height: 60, fit: BoxFit.cover),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              width: 120,
              height: 60,
              child: Text(
                categoryName,
                style: TextStyle(
                    fontFamily: 'NeoSans',
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogList extends StatelessWidget {
  final String imgUrl, title, desc, url;
  BlogList(
      {@required this.imgUrl,
      @required this.title,
      @required this.desc,
      @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.push(context , MaterialPageRoute(builder: (context) => ArticleView(
          blogUrl: url,
       )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'NeoSans',
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(imgUrl)),
              SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: TextStyle(
                    color: Colors.black, fontFamily: 'NeoSans', fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
