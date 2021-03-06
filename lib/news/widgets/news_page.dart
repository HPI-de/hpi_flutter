import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hpi_flutter/app/app.dart';
import 'package:hpi_flutter/core/core.dart';

import '../bloc.dart';
import '../data.dart';
import 'article_preview.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HpiSliverAppBar(
            floating: true,
            title: Text(context.s.news),
          ),
          Builder(builder: _buildArticleList),
        ],
      ),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    return PaginatedSliverList<Article>(
      pageSize: 10,
      dataLoader: services.get<NewsBloc>().getArticles,
      itemBuilder: (_, article, __) => ArticlePreview(article),
    );
  }
}
