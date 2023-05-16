// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gen/assets.gen.dart';
import '../../config/gen/colors.gen.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/base_button.dart';
import '../../core/components/buttons/base_icon_button.dart';
import '../../core/components/buttons/favorite_icon_button.dart';
import '../../core/components/card/actor_card.dart';
import '../../core/components/card/movie_card.dart';
import '../../core/components/dialogs/base_bottom_sheet.dart';
import '../../core/components/dialogs/base_info_dialog.dart';
import '../../core/components/indicator/base_indicator.dart';
import '../../core/constants/imdb_image_constants.dart';
import '../../core/constants/youtube_video_constants.dart';
import '../../core/extensions/int_extensions.dart';
import '../../core/init/language/locale_keys.g.dart';
import '../../core/utils/launch_url.dart';
import '../../domain/entities/movie/movie_detail/movie_detail.dart';
import '../../domain/entities/movie_provider/provider_entity.dart';
import '../_widgets/movie_detail/country_dropdown.dart';
import '../_widgets/tag_container.dart';
import '../bloc/blocs.dart';
import '../bloc/movie_provider/movie_provider_bloc.dart';
import '../bloc/movie_video/movie_video_bloc.dart';

class MovieDetailView extends HookWidget {
  const MovieDetailView({
    super.key,
    required this.movieID,
    required this.movieDetailBloc,
    required this.recommendationMoviesBloc,
    required this.similiarMoviesBloc,
    required this.movieCreditBloc,
    required this.movieProviderBloc,
    required this.movieVideoBloc,
  });

  final String movieID;
  final MovieDetailBloc movieDetailBloc;
  final RecommendationMoviesBloc recommendationMoviesBloc;
  final SimiliarMoviesBloc similiarMoviesBloc;
  final MovieCreditBloc movieCreditBloc;
  final MovieProviderBloc movieProviderBloc;
  final MovieVideoBloc movieVideoBloc;

  @override
  Widget build(BuildContext context) {
    late DropdownController dropdownController;

    useEffect(() {
      movieDetailBloc.add(FetchMovieDetail(movieID));
      recommendationMoviesBloc.add(FetchMovies(page: 1, movieID: movieID));
      similiarMoviesBloc.add(FetchMovies(page: 1, movieID: movieID));
      movieCreditBloc.add(FetchMovieCredit(movieID));
      dropdownController = DropdownController();
      return () {
        dropdownController.dispose();
      };
    }, []);

    return Scaffold(
      key: key,
      body: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        bloc: movieDetailBloc,
        builder: (context, state) {
          if (state is MovieDetailError) {
            return SizedBox.expand(child: Center(child: Text(state.message)));
          } else if (state is MovieDetailHasData) {
            return _hasDataBody(context, data: state.movieDetail, dropdownController: dropdownController);
          } else {
            return const SafeArea(child: SizedBox(child: Center(child: BaseIndicator())));
          }
        },
      ),
    );
  }

  Widget _hasDataBody(
    BuildContext context, {
    required MovieDetail data,
    required DropdownController dropdownController,
  }) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _image(data, context),
          _titleAndInfos(data, context),
          15.verticalSpace,
          _tags(data),
          30.verticalSpace,
          _buttons(context, dropdownController: dropdownController),
          25.verticalSpace,
          _credits(),
          15.verticalSpace,
          _description(data, context),
          20.verticalSpace,
          _divider,
          20.verticalSpace,
          _recommandations(),
          5.verticalSpace,
          _similiars(),
          100.verticalSpace
        ],
      ),
    );
  }

  Stack _image(MovieDetail data, BuildContext context) {
    return Stack(
      children: [
        if (data.backdropPath != null)
          CachedNetworkImage(
            fit: BoxFit.fitHeight,
            imageUrl: '${IMDBImageConstants.original}${data.backdropPath}',
            height: 325.h,
            errorWidget: (context, url, error) => Container(),
          )
        else if (data.posterPath != null)
          CachedNetworkImage(
            fit: BoxFit.fitWidth,
            imageUrl: '${IMDBImageConstants.original}${data.posterPath}',
            height: 325.h,
            width: 1.sw,
            errorWidget: (context, url, error) => Container(),
          )
        else
          Container(
            height: 325.h,
            color: MGColors.grey,
            alignment: Alignment.center,
            child: const Icon(Icons.photo, color: MGColors.dark, size: 52),
          ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.2,
                  0.4,
                  0.7,
                  0.8,
                  0.9,
                  1,
                ],
                colors: [
                  ...List.generate(5, (index) => Colors.transparent.withOpacity(0)),
                  MGColors.dark.withOpacity(1),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(10.r),
              child: BaseIconButton(
                onPressed: router.pop,
                icon: Assets.icons.leftArrow.svg(color: Colors.white, width: 20),
              ),
            ),
            FavoriteIconButton(onPressed: () async {}),
          ],
        ),
      ],
    );
  }

  Padding _titleAndInfos(MovieDetail data, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.title!, style: Theme.of(context).textTheme.titleMedium),
          10.verticalSpace,
          SizedBox(
            width: 0.5.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.voteAverage!.toString().substring(0, 3),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16)),
                const Icon(Icons.star, color: MGColors.grey, size: 15),
                5.horizontalSpace,
                Text('·', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900)),
                5.horizontalSpace,
                Text(
                  '${Duration(minutes: data.runtime!).inHours}h ${Duration(minutes: data.runtime!).inMinutes.remainder(60)} min',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
                ),
                5.horizontalSpace,
                Text('·', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900)),
                5.horizontalSpace,
                if (DateTime.tryParse(data.releaseDate!) != null)
                  Text(DateFormat('yyyy').format(DateTime.tryParse(data.releaseDate!)!),
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16))
                else
                  Text('?', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _tags(MovieDetail data) {
    return SizedBox(
      height: 30.h,
      width: 1.sw,
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => TagContainer(
          tag: data.genres![index].id!.getGenreFromNumber(),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15),
        itemCount: data.genres!.length,
      ),
    );
  }

  Padding _buttons(BuildContext context, {required DropdownController dropdownController}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: BaseButtonWithIcon(
              title: 'Watch Trailer',
              foregroundColor: Colors.white,
              backgroundColor: MGColors.green,
              iconPositionIsRight: false,
              onPressed: () async => _trailers().show(context, isDissmissible: true),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 36,
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            child: BaseIconButton(
              outline: true,
              isDark: true,
              foregroundColor: MGColors.grey,
              icon: Assets.icons.filmCamera.svg(color: Colors.white, height: 24),
              onPressed: () async => _providers(context, dropdownController: dropdownController).show(context),
            ),
          ),

          10.horizontalSpace,
          Expanded(
            child: BaseIconButton(
              outline: true,
              isDark: true,
              foregroundColor: MGColors.grey,
              icon: Icon(
                Icons.share_outlined,
                size: 24,
                color: MGColors.grey.shade50,
              ),
              onPressed: () {},
            ),
          ),

          //* bloc builder
        ],
      ),
    );
  }

  BaseInfoDialog _trailers() {
    return BaseInfoDialog(
      'Videos',
      initFunc: () => movieVideoBloc.add(FetchMovieVideos(movieID)),
      content: BlocBuilder<MovieVideoBloc, MovieVideoState>(
        bloc: movieVideoBloc,
        builder: (context, state) {
          if (state is MovieVideoLoading) {
            return const Center(child: BaseIndicator());
          } else if (state is MovieVideoError) {
            return const Center(child: Text('ERROR'));
          } else if (state is MovieVideoHasData) {
            return SizedBox(
              width: 325.w,
              height: 450.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.r),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 15.r),
                  itemCount: state.movieVideoList.length,
                  itemBuilder: (_, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        15.verticalSpace,
                        GestureDetector(
                          onTap: () async {
                            await LaunchUrl.openYoutubeVideoFromKey(state.movieVideoList[index]!.key!);
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CachedNetworkImage(
                                imageUrl: YoutubeVideoConstants.videoImage
                                    .replaceAll('{key}', state.movieVideoList[index]!.key!),
                                fit: BoxFit.fill,
                              ),
                              PhysicalModel(
                                color: MGColors.grey.withOpacity(0.8),
                                shape: BoxShape.circle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Assets.icons.play.svg(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.movieVideoList[index]!.name!,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            Text(
                              DateFormat.yMd().format(state.movieVideoList[index]!.publishedAt!),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                      ],
                    );
                  },
                  separatorBuilder: (_, __) => _divider,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  BaseBottomSheet _providers(BuildContext context, {required DropdownController dropdownController}) {
    return BaseBottomSheet(
      initFunc: () => movieProviderBloc.add(FetchMovieProvider(movieID)),
      child: BlocBuilder<MovieProviderBloc, MovieProviderState>(
          bloc: movieProviderBloc,
          builder: (context, state) {
            if (state is MovieProviderLoading) {
              return const Center(
                child: BaseIndicator(),
              );
            } else if (state is MovieProviderError) {
              return const Center(child: Text('ERROR'));
            }
            return Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: CountryDropdown(
                    dropdownController: dropdownController,
                    defaultItem: movieProviderBloc.getCurrentDropdownItem(),
                    onChange: (value) {
                      movieProviderBloc.add(SwitchCountry(value));
                      dropdownController.close();
                    },
                  ),
                ),
                25.verticalSpace,
                if (state is MovieProviderHasData) ...[
                  _providerCategory(
                    context,
                    title: 'Buy',
                    data: state.movieProvider.buy,
                  ),
                  25.verticalSpace,
                  _providerCategory(
                    context,
                    title: 'Rent',
                    data: state.movieProvider.rent,
                  ),
                  25.verticalSpace,
                  _providerCategory(
                    context,
                    title: 'Flatrate',
                    data: state.movieProvider.flatrate,
                  )
                ] else if (state is MovieProviderEmpty) ...[
                  Text(
                    state.message,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                  ),
                  30.verticalSpace
                ],
              ],
            );
          }),
    );
  }

  Widget _providerCategory(
    BuildContext context, {
    required String title,
    required List<ProviderEntity>? data,
  }) {
    if (data == null) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 25, fontWeight: FontWeight.w800)),
        15.verticalSpace,
        SizedBox(
          height: 50,
          width: 1.sw,
          // color: Colors.red,
          // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
            ),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: IMDBImageConstants.original + data[index].logoPath!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  BlocBuilder<MovieCreditBloc, MovieCreditState> _credits() {
    return BlocBuilder<MovieCreditBloc, MovieCreditState>(
      bloc: movieCreditBloc,
      builder: (context, state) {
        if (state is MovieCreditHasData) {
          return SizedBox(
            height: 90.h,
            width: 1.sw,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => ActorCard(
                cast: state.movieCredit.cast![index],
              ),
              separatorBuilder: (_, index) => SizedBox(width: 30.w),
              itemCount: state.movieCredit.cast!.length,
            ),
          );
        } else if (state is MovieCreditError) {
          return Container();
        }
        return Padding(padding: EdgeInsets.symmetric(vertical: 5.h), child: const Center(child: BaseIndicator()));
      },
    );
  }

  Padding _description(MovieDetail data, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: AutoSizeText(
        data.overview!,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _recommandations() {
    return BlocBuilder<RecommendationMoviesBloc, BaseMoviesState>(
      bloc: recommendationMoviesBloc,
      builder: (context, state) {
        if (state is BaseMoviesHasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22.sp),
                    ),
                    Text(
                      LocaleKeys.home_view_all.tr(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              15.verticalSpace,
              SizedBox(
                height: 325.h,
                width: 10.sw,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  itemBuilder: (context, index) => MovieCard(
                    movie: state.movieList[index],
                    onTap: () async {
                      return router.push(MovieBlocProviderRoute(movieID: state.movieList[index].id!.toString()));
                    },
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: state.movieList.length,
                ),
              ),
              35.verticalSpace,
            ],
          );
        }
        return Container();
      },
    );
  }

  Widget _similiars() {
    return BlocBuilder<SimiliarMoviesBloc, BaseMoviesState>(
      bloc: similiarMoviesBloc,
      builder: (context, state) {
        if (state is BaseMoviesHasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Similiar',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22.sp),
                    ),
                    Text(
                      LocaleKeys.home_view_all.tr(),
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(),
                    ),
                  ],
                ),
              ),
              15.verticalSpace,
              SizedBox(
                height: 325.h,
                width: 10.sw,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  itemBuilder: (context, index) => MovieCard(
                    movie: state.movieList[index],
                    onTap: () async =>
                        router.push(MovieBlocProviderRoute(movieID: state.movieList[index].id!.toString())),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: state.movieList.length,
                ),
              ),
            ],
          );
        }
        return Container();
      },
    );
  }

  Widget get _divider => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: const Divider(color: Colors.white, thickness: 0.1),
      );
}
