part of '../home_page.dart';

class ClippedImage extends StatelessWidget {
  const ClippedImage({
    Key? key,
    required this.catFactModel,
    required this.height,
    required this.width,
  }) : super(key: key);

  final CatFactModel? catFactModel;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: height,
        width: width,
        child: CachedNetworkImage(
          imageUrl: catFactModel!.image!,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
