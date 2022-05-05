part of '../home_page.dart';

class FactWidget extends StatelessWidget {
  const FactWidget({Key? key, this.catFactModel}) : super(key: key);
  final CatFactModel? catFactModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        // height: 60,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(catFactModel!.text!));
  }
}
