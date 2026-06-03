import 'package:fluxpost/core/error/failures.dart';
import 'package:fluxpost/core/usecase/usecase.dart';
import 'package:fluxpost/features/blog/domain/entities/blog.dart';
import 'package:fluxpost/features/blog/domain/repositories/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepository blogRepository;
  GetAllBlogs(this.blogRepository);

  @override
  Future<Either<Failure, List<Blog>>> call(NoParams params) async {
    return await blogRepository.getAllBlogs();
  }
}