part of '../cat_local_list_page.dart';

class CatLocalList extends StatefulWidget {
  const CatLocalList({Key? key}) : super(key: key);

  @override
  State<CatLocalList> createState() => _CatLocalListState();
}

class _CatLocalListState extends State<CatLocalList> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        child: BlocBuilder<CatlocalBloc, CatlocalState>(
          builder: (context, state) {
            if (state is CatlocalLoading || state is CatlocalError) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is CatlocalFetched) {
              return ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: state.catBox!.length,
                itemBuilder: (context, index) {
                  CatFactModel catFactModel = state.catBox!.getAt(index)!;
                  return CatlocalCard(catFactModel: catFactModel);
                },
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
