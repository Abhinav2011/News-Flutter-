import 'dart:convert';
import 'package:news/model/ArticleModel.dart';
import 'package:http/http.dart' as http;

class NewsFromAPI {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=fe78da149c434da4a71d3be772528256");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            title: element['title'],
            desc: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryWiseNewsFromAPI {
  List<ArticleModel> newsCategory = [];

  Future<void> getNews(String category) async {
    var _url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=fe78da149c434da4a71d3be772528256";
    var url = Uri.parse(_url);

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            title: element['title'],
            desc: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
          );
          newsCategory.add(articleModel);
        }
        
      });
    }
  }
}
