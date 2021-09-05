import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/presentation/approved_page/approved_page.dart';
import 'package:rest_api_with_bloc/presentation/in_progress_page/in_progress_page.dart';
import 'package:rest_api_with_bloc/presentation/needs_review_page/needs_review_page.dart';
import 'package:rest_api_with_bloc/presentation/on_hold_page/on_hold_page.dart';

import 'bloc/home_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('REST API'),
          centerTitle: true,
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            labelPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            tabs: [
              Text('On hold'),
              Text('In progress'),
              Text('Need review'),
              Text('Approved'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OnHoldPage(),
            InProgressPage(),
            NeedReviewPage(),
            ApprovedPage(),
          ],
        ),
      ),
    );
  }
}
