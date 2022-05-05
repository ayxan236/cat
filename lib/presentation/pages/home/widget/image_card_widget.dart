part of '../home_page.dart';

class ImageCard extends StatelessWidget {
  final CatFactModel? catFactModel;
  const ImageCard({Key? key, this.catFactModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
           catFactModel!.image!,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}