part of '../home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CatFactBloc>();
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CatFactBloc, CatFactState>(
        builder: (context, state) {
          if (state is CatFactLoading || state is CatFactError) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CatFactFetched) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: ListView(
                children: [
                   ImageCard(catFactModel: state.catFactModel!),
                  const SizedBox(
                    height: 10,
                  ),
                  FactWidget(catFactModel: state.catFactModel!),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonsWidget(onListTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider(
                                  create: (context) =>
                                      CatlocalBloc()..add(CatlocalFetch()),
                                  child: const CatLocalList(),
                                )));
                  }, onReset: () {
                    bloc.add(CatFactFetchEvent());
                  })
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
