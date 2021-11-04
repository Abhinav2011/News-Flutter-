import 'package:flutter/material.dart';
import 'package:news/model/ArticleModel.dart';
import 'package:news/helper/NewsDataAPI.dart';
import 'package:news/tile/newBlogTile.dart';

class Category_News extends StatefulWidget {
  final String categoryName;
  Category_News({required this.categoryName});

  @override
  _Category_NewsState createState() => _Category_NewsState();
}

class _Category_NewsState extends State<Category_News> {
  List<ArticleModel> articles = [];
  bool _loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllNews();
  }

  getAllNews() async {
    CategoryWiseNewsFromAPI data = CategoryWiseNewsFromAPI();
    await data.getNews(widget.categoryName);
    articles = data.newsCategory;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _loading ? Center(
        child: Container(
                child: CircularProgressIndicator(),
          ),
      )
      : SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
               Container(
                        padding: EdgeInsets.only(top: 16),
                        child: ListView.builder(
                          itemCount: articles.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return NewsBlogTile(
                                imageUrl: articles[index].urlToImage,
                                title: articles[index].title,
                                description: articles[index].desc,
                                url: articles[index].url);
                          },
                        ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
