part of '../home_page.dart';

class ImageCard extends StatelessWidget {
  final CatFactModel? catFactModel;
  const ImageCard({Key? key, this.catFactModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClippedImage(
      catFactModel: catFactModel,
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
    );
  }
}
