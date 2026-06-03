import 'package:fluxpost/features/blog/data/models/blog_model.dart';
import 'package:hive/hive.dart';

abstract interface class BlogLocalDataSource {
  void uploadLocalBlogs({required List<BlogModel> blogs});
  List<BlogModel> loadBlogs();
}

class BlogLocalDataSourceImpl implements BlogLocalDataSource {
  final Box<dynamic> box;
  BlogLocalDataSourceImpl(this.box);

  @override
  List<BlogModel> loadBlogs() {
    final List<BlogModel> blogs = [];
    for (int i = 0; i < box.length; i++) {
      final raw = box.get(i.toString());
      if (raw != null) {
        blogs.add(BlogModel.fromJson(raw));
      }
    }

    return blogs;
  }

  @override
  void uploadLocalBlogs({required List<BlogModel> blogs}) {
    box.clear();
    for (int i = 0; i < blogs.length; i++) {
      box.put(i.toString(), blogs[i].toJson());
    }
  }
}
