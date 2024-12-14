import 'package:design/components/api_error_widget.dart';
import 'package:design/components/list/users_grid_widget.dart';
import 'package:design/components/user_grid_tile.dart';
import 'package:design/extensions/resources_ext.dart';
import 'package:features/home/bloc/home_cubit.dart';
import 'package:features/uimodels/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:design/gen/assets.gen.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = GetIt.instance<HomeCubit>()..loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => _cubit,
      child: screenContent(),
    );
  }

  Widget screenContent() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(context.locale.app_name),
      ),
      body: Center(
        child: _usersListBuilder(),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _usersListBuilder() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadSuccess) {
          return _usersList(state.users);
        } else if (state is HomeLoadError) {
          return SliverFillRemaining(
              hasScrollBody: false,
              child: ApiErrorWidget(
                errorText: state.message,
                onRetry: () {
                  BlocProvider.of<HomeCubit>(context).loadUsers();
                },
              ));
        } else {
          return  Center(
            child: Assets.images.fire.asImage(),
          );
        }
      },
      bloc: _cubit,
    );
  }

  _usersList(List<UserModel> users) {
    GridWidget(
      itemsCount: users.length,
      itemBuilder: (context, index) {
        return UserGridTile(
          userImageUrl: users[index].photo,
          userName: users[index].name,
        );
      },
    );
  }
}
