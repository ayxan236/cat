part of '../cat_local_list_page.dart';

class CatlocalCard extends StatelessWidget {
  const CatlocalCard({Key? key, this.catFactModel}) : super(key: key);
  final CatFactModel? catFactModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(catFactModel!.text!),
    );
  }
}
