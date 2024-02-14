import 'package:fontfamily_example/resources/shorts.dart';

class IsLoading extends StatelessWidget {
  const IsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
