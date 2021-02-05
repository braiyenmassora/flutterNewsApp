import 'package:flutterAppNews/models/category_model.dart';


List<CategoryModel> getCategories() {
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  // list category tech
  categoryModel.categoryName = "Teknologi";
  categoryModel.imgUrl =
      "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1952&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

// list category Science
  // categoryModel.categoryName = "Il";
  // categoryModel.imgUrl =
  //     "https://images.unsplash.com/photo-1507668077129-56e32842fceb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80";
  // category.add(categoryModel);
  // categoryModel = new CategoryModel();

  // list category entertainment

  categoryModel.categoryName = "Hiburan";
  categoryModel.imgUrl =
      "https://images.unsplash.com/photo-1496337589254-7e19d01cec44?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  // list category news
  categoryModel.categoryName = "Bisnis";
  categoryModel.imgUrl =
      "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2855&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  // list category General
  categoryModel.categoryName = "Umum";
  categoryModel.imgUrl =
      "https://images.unsplash.com/photo-1572356722857-1fa4d525766e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2089&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  // list category Health
  categoryModel.categoryName = "Kesehatan";
  categoryModel.imgUrl =
      "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  // list category Sports
  categoryModel.categoryName = "Olahraga";
  categoryModel.imgUrl =
      "https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1949&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  // list category Technology

  return category;
}
