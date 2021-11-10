import 'dart:ui';

import 'package:bloc_flutters/application/view_data/view_data_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/home/view_data/detail_view_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ViewDataPage extends HookWidget {
  ViewDataPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<ViewDataBloc>(
        create: (context) =>
            getIt<ViewDataBloc>()..add(const ViewDataEvent.getData()),
        child: BlocConsumer<ViewDataBloc, ViewDataState>(
            listener: (BuildContext context, ViewDataState state) {
          state.maybeMap(
              orElse: () {},
              loaded: (s) {
                print("Loaded in listener");
                // s.optionFailedOrSuccess.fold(
                //     () => null,
                //     (a) => a.fold(
                //         (l) => l.maybeMap(
                //               orElse: () {},
                //             ),
                //         (r) => null));
                s.optionFailedOrSuccess.match(
                    (l) => l.fold(
                        (l) => l.maybeMap(
                              noInternet: (_) {
                                Alerts.logoutAlert(
                                    title: "No Internet",
                                    subTitle: "You don't connect with internet",
                                    onPressed: () {
                                      Get.back();
                                    },
                                    onCancelPressed: () {},
                                    context: context);
                              },
                              failed: (_) {
                                Alerts.logoutAlert(
                                    title: "Failed",
                                    subTitle: "Failed to connect",
                                    onPressed: () {},
                                    onCancelPressed: () {},
                                    context: context);
                              },
                              noData: (_) {
                                Alerts.logoutAlert(
                                    title: "No Data",
                                    subTitle: "No Data",
                                    onPressed: () {
                                      Get.back();
                                    },
                                    onCancelPressed: () {},
                                    context: context);
                              },
                              orElse: () {},
                            ),
                        (r) => null),
                    () => null);
              });
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 12.0,
                                          color: Colors.white),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                    return s.optionFailedOrSuccess.match(
                        (t) => t.fold(
                              (l) => const Center(child: Text("No Data")),
                              (listData) {
                                print("List Data from Page");
                                print(listData.data.length);
                                print("Detail data");
                                print(listData.data[1].name);
                                return ListView.separated(
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const SizedBox(height: 8);
                                  },
                                  itemCount: 6,
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                        onTap: () {
                                          Get.to(DetailViewData(
                                              datum: listData.data[index]));
                                        },
                                        child: Card(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(listData.data[index].name,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20)),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 4.0),
                                                  child: Text(
                                                      listData.data[index].year
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ));
                                  },
                                );
                              },
                            ),
                        () => const Center(child: Text("No Data")));
                  }),
            ),
          );
        }));
  }
}
