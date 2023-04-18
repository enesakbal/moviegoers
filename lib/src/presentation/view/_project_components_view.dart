import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gen/assets.gen.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/base_button.dart';
import '../../core/components/buttons/base_icon_button.dart';
import '../../core/components/card/movie_card.dart';
import '../../domain/entities/movie/movie/movie.dart';

@RoutePage()
class ProjectComponentsView extends StatelessWidget {
  const ProjectComponentsView({super.key});

  @override
  Widget build(BuildContext context) {
    const modelll = Movie(
        posterPath: '/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg',
        adult: false,
        backdropPath: '/ovM06PdF3M8wvKb06i4sjW3xoww.jpg',
        id: 76600,
        genreIds: [878, 12, 28],
        originalLanguage: 'en',
        originalTitle: 'Avatar: The Way of Water',
        overview:
            'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.',
        popularity: 9505.705,
        releaseDate: '2022-12-14',
        title: 'Avatar: The Way of Water',
        video: false,
        voteAverage: 7.7,
        voteCount: 6167);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseIconButton(
                    icon: Assets.icons.close.svg(),
                    onPressed: () {},
                  )
                ],
              ),
              15.verticalSpace,
              MovieCard(
                movie: modelll,
                onTap: () async => router.push(MovieDetailRoute(movieID: modelll.id!.toString())),
              ),
              50.verticalSpace,
              CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: (context, index, realIndex) => MovieCard(
                  movie: modelll,
                  onTap: () {},
                ),
                options: CarouselOptions(
                  autoPlay: true,
                  height: 325.h,
                  viewportFraction: 0.6,
                  enlargeFactor: 0.4,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                ),
              ),
              BaseButton(
                  title: 'title',
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.red,
                  onPressed: () async {
                    router.push(const HomeRoute());
                  }),
              50.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
