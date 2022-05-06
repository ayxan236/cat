part of '../cat_local_list_page.dart';

class CatlocalCard extends StatelessWidget {
  const CatlocalCard({Key? key, this.catFactModel}) : super(key: key);
  final CatFactModel? catFactModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  ClippedImage(
        catFactModel: catFactModel,
        height: 70,
        width: 60,
      ),
      title: Text(catFactModel!.text!),
    );
  }
}
