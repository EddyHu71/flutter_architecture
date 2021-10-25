import 'package:bloc_flutters/application/view_data/view_data_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';

class ViewData extends HookWidget {
  ViewData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<ViewDataBloc>(create: (context) => getIt<ViewDataBloc>()..add(ViewDataEvent.started()),
    child : BlocConsumer<ViewDataBloc, ViewDataState>(
        listener: (BuildContext context, ViewDataState state) {
      state.maybeMap(
        orElse: () {},
        loaded: (s) {
          s.optionFailedOrSuccess.fold(
            () => null,
           (a) => a.fold((l) => l.maybeMap(orElse: () {},), (r) => null)
           );
        }
      );
    }, builder: (BuildContext context, ViewDataState state) {
        return SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: state.maybeMap(
                orElse: () => ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                              height: 224,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(16),
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey.shade500,
                                highlightColor: Colors.grey.shade200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                                height: 16.0,
                                                color: Colors.white),
                                          ),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Container(
                                                height: 16.0,
                                                color: Colors.white),
                                          )
                                        ],
                                      )),
                                    ),
                                    Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 12.0,
                                        color: Colors.white),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              )));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 8);
                    },
                    itemCount: 10),
                loaded: (s) {
                  s.optionFailedOrSuccess.fold(
                      () => const Center(child: Text("No Data")),
                      (a) => a.fold(
                          (l) => const Center(child: Text("No Data")),
                          (listData) => ListView.builder(
                              itemCount: listData.data?.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Components.listData(
                                        name: listData.data?[index].name,
                                        onPressed: () {
                                          
                                        },
                                        year: listData.data?[index].year.toString()  );
                              })));
                }),
          ),
        );
      }),
     );
  }
}
