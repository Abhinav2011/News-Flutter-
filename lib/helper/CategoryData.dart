import 'package:news/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  //Business
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=869&q=80";
  category.add(categoryModel);

  //Entertainment
  CategoryModel categoryModel1 = new CategoryModel();
  categoryModel1.categoryName = "Entertainment";
  categoryModel1.imageUrl =
      "https://images.unsplash.com/photo-1598899134739-24c46f58b8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=856&q=80";
  category.add(categoryModel1);

  //Genral
  CategoryModel categoryModel2 = new CategoryModel();
  categoryModel2.categoryName = "General";
  categoryModel2.imageUrl =
      "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel2); 

  //Health
  CategoryModel categoryModel3 = new CategoryModel();
  categoryModel3.categoryName = "Health";
  categoryModel3.imageUrl =
      "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  category.add(categoryModel3);

  //Science
  CategoryModel categoryModel4 = new CategoryModel();
  categoryModel4.categoryName = "Science";
  categoryModel4.imageUrl =
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
      category.add(categoryModel4);

  //sports
  CategoryModel categoryModel5 = new CategoryModel();
  categoryModel5.categoryName = "Sports";
  categoryModel5.imageUrl =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
      category.add(categoryModel5);

  

  return category;
}
