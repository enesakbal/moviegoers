// Mocks generated by Mockito 5.4.0 from annotations
// in moviegoers/test/_utils/mock/test_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i16;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:moviegoers/src/core/init/network/network_exception.dart'
    as _i17;
import 'package:moviegoers/src/data/datasources/remote/movie/movie_remote_data_source.dart'
    as _i30;
import 'package:moviegoers/src/data/models/movie/movie_credit/movie_credit_model.dart'
    as _i8;
import 'package:moviegoers/src/data/models/movie/movie_detail/movie_detail_model.dart'
    as _i7;
import 'package:moviegoers/src/data/models/movie/movie_external_id/movie_external_id_model.dart'
    as _i9;
import 'package:moviegoers/src/data/models/movie/movie_keywords/movie_keywords_model.dart'
    as _i14;
import 'package:moviegoers/src/data/models/movie/movie_lists/now_playing/now_playing_movies_model.dart'
    as _i4;
import 'package:moviegoers/src/data/models/movie/movie_lists/popular/popular_movies_model.dart'
    as _i3;
import 'package:moviegoers/src/data/models/movie/movie_lists/recommendation/recommendation_movies_model.dart'
    as _i12;
import 'package:moviegoers/src/data/models/movie/movie_lists/similiar/similiar_movies_model.dart'
    as _i13;
import 'package:moviegoers/src/data/models/movie/movie_lists/top_rated/top_rated_movies_model.dart'
    as _i6;
import 'package:moviegoers/src/data/models/movie/movie_lists/upcoming/upcoming_movies_model.dart'
    as _i5;
import 'package:moviegoers/src/data/models/movie/movie_provider/movie_provider_model.dart'
    as _i10;
import 'package:moviegoers/src/data/models/movie/movie_video/movie_video_model.dart'
    as _i11;
import 'package:moviegoers/src/domain/entities/movie/movie_credit/movie_credit.dart'
    as _i23;
import 'package:moviegoers/src/domain/entities/movie/movie_detail/movie_detail.dart'
    as _i22;
import 'package:moviegoers/src/domain/entities/movie/movie_external_id/movie_external_id.dart'
    as _i24;
import 'package:moviegoers/src/domain/entities/movie/movie_keywords/movie_keywords.dart'
    as _i29;
import 'package:moviegoers/src/domain/entities/movie/movie_list/now_playing_movies.dart'
    as _i19;
import 'package:moviegoers/src/domain/entities/movie/movie_list/popular_movies.dart'
    as _i18;
import 'package:moviegoers/src/domain/entities/movie/movie_list/recommendation_movies.dart'
    as _i26;
import 'package:moviegoers/src/domain/entities/movie/movie_list/similiar_movies.dart'
    as _i27;
import 'package:moviegoers/src/domain/entities/movie/movie_list/top_rated_movies.dart'
    as _i21;
import 'package:moviegoers/src/domain/entities/movie/movie_list/upcoming_movies.dart'
    as _i20;
import 'package:moviegoers/src/domain/entities/movie/movie_provider/movie_provider.dart'
    as _i28;
import 'package:moviegoers/src/domain/entities/movie/movie_video/movie_video.dart'
    as _i25;
import 'package:moviegoers/src/domain/repositories/movie_repository.dart'
    as _i15;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePopularMoviesModel_1 extends _i1.SmartFake
    implements _i3.PopularMoviesModel {
  _FakePopularMoviesModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNowPlayingMoviesModel_2 extends _i1.SmartFake
    implements _i4.NowPlayingMoviesModel {
  _FakeNowPlayingMoviesModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUpcomingMoviesModel_3 extends _i1.SmartFake
    implements _i5.UpcomingMoviesModel {
  _FakeUpcomingMoviesModel_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTopRatedMoviesModel_4 extends _i1.SmartFake
    implements _i6.TopRatedMoviesModel {
  _FakeTopRatedMoviesModel_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieDetailModel_5 extends _i1.SmartFake
    implements _i7.MovieDetailModel {
  _FakeMovieDetailModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieCreditModel_6 extends _i1.SmartFake
    implements _i8.MovieCreditModel {
  _FakeMovieCreditModel_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieExternalIdModel_7 extends _i1.SmartFake
    implements _i9.MovieExternalIdModel {
  _FakeMovieExternalIdModel_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieProviderModel_8 extends _i1.SmartFake
    implements _i10.MovieProviderModel {
  _FakeMovieProviderModel_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieVideoModel_9 extends _i1.SmartFake
    implements _i11.MovieVideoModel {
  _FakeMovieVideoModel_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRecommendationMoviesModel_10 extends _i1.SmartFake
    implements _i12.RecommendationMoviesModel {
  _FakeRecommendationMoviesModel_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSimiliarMoviesModel_11 extends _i1.SmartFake
    implements _i13.SimiliarMoviesModel {
  _FakeSimiliarMoviesModel_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieKeywordsModel_12 extends _i1.SmartFake
    implements _i14.MovieKeywordsModel {
  _FakeMovieKeywordsModel_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i15.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<
      _i2.Either<_i17.NetworkExceptions, _i18.PopularMovies>> getPopularMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
          {#page: page},
        ),
        returnValue: _i16.Future<
                _i2.Either<_i17.NetworkExceptions, _i18.PopularMovies>>.value(
            _FakeEither_0<_i17.NetworkExceptions, _i18.PopularMovies>(
          this,
          Invocation.method(
            #getPopularMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i16.Future<_i2.Either<_i17.NetworkExceptions, _i18.PopularMovies>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i19.NowPlayingMovies>>
      getNowPlayingMovies({required int? page}) => (super.noSuchMethod(
            Invocation.method(
              #getNowPlayingMovies,
              [],
              {#page: page},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions,
                        _i19.NowPlayingMovies>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i19.NowPlayingMovies>(
              this,
              Invocation.method(
                #getNowPlayingMovies,
                [],
                {#page: page},
              ),
            )),
          ) as _i16.Future<
              _i2.Either<_i17.NetworkExceptions, _i19.NowPlayingMovies>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i20.UpcomingMovies>>
      getUpcomingMovies({required int? page}) => (super.noSuchMethod(
            Invocation.method(
              #getUpcomingMovies,
              [],
              {#page: page},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions,
                        _i20.UpcomingMovies>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i20.UpcomingMovies>(
              this,
              Invocation.method(
                #getUpcomingMovies,
                [],
                {#page: page},
              ),
            )),
          ) as _i16
              .Future<_i2.Either<_i17.NetworkExceptions, _i20.UpcomingMovies>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i21.TopRatedMovies>>
      getTopRatedMovies({required int? page}) => (super.noSuchMethod(
            Invocation.method(
              #getTopRatedMovies,
              [],
              {#page: page},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions,
                        _i21.TopRatedMovies>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i21.TopRatedMovies>(
              this,
              Invocation.method(
                #getTopRatedMovies,
                [],
                {#page: page},
              ),
            )),
          ) as _i16
              .Future<_i2.Either<_i17.NetworkExceptions, _i21.TopRatedMovies>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i22.MovieDetail>>
      getMovieDetails({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieDetails,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions, _i22.MovieDetail>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i22.MovieDetail>(
              this,
              Invocation.method(
                #getMovieDetails,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i16
              .Future<_i2.Either<_i17.NetworkExceptions, _i22.MovieDetail>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i23.MovieCredit>>
      getMovieCredits({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieCredits,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions, _i23.MovieCredit>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i23.MovieCredit>(
              this,
              Invocation.method(
                #getMovieCredits,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i16
              .Future<_i2.Either<_i17.NetworkExceptions, _i23.MovieCredit>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i24.MovieExternalId>>
      getMovieExternalIDs({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieExternalIDs,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions,
                        _i24.MovieExternalId>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i24.MovieExternalId>(
              this,
              Invocation.method(
                #getMovieExternalIDs,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i16.Future<
              _i2.Either<_i17.NetworkExceptions, _i24.MovieExternalId>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i25.MovieVideo>>
      getMovieVideos({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieVideos,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions, _i25.MovieVideo>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i25.MovieVideo>(
              this,
              Invocation.method(
                #getMovieVideos,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i16
              .Future<_i2.Either<_i17.NetworkExceptions, _i25.MovieVideo>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i26.RecommendationMovies>>
      getMovieRecommendations({
    required String? movieID,
    required int? page,
  }) =>
          (super.noSuchMethod(
            Invocation.method(
              #getMovieRecommendations,
              [],
              {
                #movieID: movieID,
                #page: page,
              },
            ),
            returnValue: _i16.Future<
                _i2.Either<_i17.NetworkExceptions,
                    _i26.RecommendationMovies>>.value(_FakeEither_0<
                _i17.NetworkExceptions, _i26.RecommendationMovies>(
              this,
              Invocation.method(
                #getMovieRecommendations,
                [],
                {
                  #movieID: movieID,
                  #page: page,
                },
              ),
            )),
          ) as _i16.Future<
              _i2.Either<_i17.NetworkExceptions, _i26.RecommendationMovies>>);
  @override
  _i16.Future<_i2.Either<_i17.NetworkExceptions, _i27.SimiliarMovies>>
      getMovieSimilars({
    required String? movieID,
    required int? page,
  }) =>
          (super.noSuchMethod(
            Invocation.method(
              #getMovieSimilars,
              [],
              {
                #movieID: movieID,
                #page: page,
              },
            ),
            returnValue: _i16.Future<
                    _i2.Either<_i17.NetworkExceptions,
                        _i27.SimiliarMovies>>.value(
                _FakeEither_0<_i17.NetworkExceptions, _i27.SimiliarMovies>(
              this,
              Invocation.method(
                #getMovieSimilars,
                [],
                {
                  #movieID: movieID,
                  #page: page,
                },
              ),
            )),
          ) as _i16
              .Future<_i2.Either<_i17.NetworkExceptions, _i27.SimiliarMovies>>);
  @override
  _i16.Future<
      _i2.Either<_i17.NetworkExceptions, _i28.MovieProvider>> getMovieProviders(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieProviders,
          [],
          {#movieID: movieID},
        ),
        returnValue: _i16.Future<
                _i2.Either<_i17.NetworkExceptions, _i28.MovieProvider>>.value(
            _FakeEither_0<_i17.NetworkExceptions, _i28.MovieProvider>(
          this,
          Invocation.method(
            #getMovieProviders,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i2.Either<_i17.NetworkExceptions, _i28.MovieProvider>>);
  @override
  _i16.Future<
      _i2.Either<_i17.NetworkExceptions, _i29.MovieKeywords>> getMovieKeywords(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieKeywords,
          [],
          {#movieID: movieID},
        ),
        returnValue: _i16.Future<
                _i2.Either<_i17.NetworkExceptions, _i29.MovieKeywords>>.value(
            _FakeEither_0<_i17.NetworkExceptions, _i29.MovieKeywords>(
          this,
          Invocation.method(
            #getMovieKeywords,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i2.Either<_i17.NetworkExceptions, _i29.MovieKeywords>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i30.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<_i3.PopularMoviesModel> getPopularMovies({required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
          {#page: page},
        ),
        returnValue:
            _i16.Future<_i3.PopularMoviesModel>.value(_FakePopularMoviesModel_1(
          this,
          Invocation.method(
            #getPopularMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i16.Future<_i3.PopularMoviesModel>);
  @override
  _i16.Future<_i4.NowPlayingMoviesModel> getNowPlayingMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNowPlayingMovies,
          [],
          {#page: page},
        ),
        returnValue: _i16.Future<_i4.NowPlayingMoviesModel>.value(
            _FakeNowPlayingMoviesModel_2(
          this,
          Invocation.method(
            #getNowPlayingMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i16.Future<_i4.NowPlayingMoviesModel>);
  @override
  _i16.Future<_i5.UpcomingMoviesModel> getUpcomingMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingMovies,
          [],
          {#page: page},
        ),
        returnValue: _i16.Future<_i5.UpcomingMoviesModel>.value(
            _FakeUpcomingMoviesModel_3(
          this,
          Invocation.method(
            #getUpcomingMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i16.Future<_i5.UpcomingMoviesModel>);
  @override
  _i16.Future<_i6.TopRatedMoviesModel> getTopRatedMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRatedMovies,
          [],
          {#page: page},
        ),
        returnValue: _i16.Future<_i6.TopRatedMoviesModel>.value(
            _FakeTopRatedMoviesModel_4(
          this,
          Invocation.method(
            #getTopRatedMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i16.Future<_i6.TopRatedMoviesModel>);
  @override
  _i16.Future<_i7.MovieDetailModel> getMovieDetails(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieDetails,
          [],
          {#movieID: movieID},
        ),
        returnValue:
            _i16.Future<_i7.MovieDetailModel>.value(_FakeMovieDetailModel_5(
          this,
          Invocation.method(
            #getMovieDetails,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i7.MovieDetailModel>);
  @override
  _i16.Future<_i8.MovieCreditModel> getMovieCredits(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieCredits,
          [],
          {#movieID: movieID},
        ),
        returnValue:
            _i16.Future<_i8.MovieCreditModel>.value(_FakeMovieCreditModel_6(
          this,
          Invocation.method(
            #getMovieCredits,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i8.MovieCreditModel>);
  @override
  _i16.Future<_i9.MovieExternalIdModel> getMovieExternalIDs(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieExternalIDs,
          [],
          {#movieID: movieID},
        ),
        returnValue: _i16.Future<_i9.MovieExternalIdModel>.value(
            _FakeMovieExternalIdModel_7(
          this,
          Invocation.method(
            #getMovieExternalIDs,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i9.MovieExternalIdModel>);
  @override
  _i16.Future<_i10.MovieProviderModel> getMovieProviders(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieProviders,
          [],
          {#movieID: movieID},
        ),
        returnValue: _i16.Future<_i10.MovieProviderModel>.value(
            _FakeMovieProviderModel_8(
          this,
          Invocation.method(
            #getMovieProviders,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i10.MovieProviderModel>);
  @override
  _i16.Future<_i11.MovieVideoModel> getMovieVideos(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieVideos,
          [],
          {#movieID: movieID},
        ),
        returnValue:
            _i16.Future<_i11.MovieVideoModel>.value(_FakeMovieVideoModel_9(
          this,
          Invocation.method(
            #getMovieVideos,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i11.MovieVideoModel>);
  @override
  _i16.Future<_i12.RecommendationMoviesModel> getMovieRecommendations({
    required String? movieID,
    required int? page,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieRecommendations,
          [],
          {
            #movieID: movieID,
            #page: page,
          },
        ),
        returnValue: _i16.Future<_i12.RecommendationMoviesModel>.value(
            _FakeRecommendationMoviesModel_10(
          this,
          Invocation.method(
            #getMovieRecommendations,
            [],
            {
              #movieID: movieID,
              #page: page,
            },
          ),
        )),
      ) as _i16.Future<_i12.RecommendationMoviesModel>);
  @override
  _i16.Future<_i13.SimiliarMoviesModel> getMovieSimilars({
    required String? movieID,
    required int? page,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieSimilars,
          [],
          {
            #movieID: movieID,
            #page: page,
          },
        ),
        returnValue: _i16.Future<_i13.SimiliarMoviesModel>.value(
            _FakeSimiliarMoviesModel_11(
          this,
          Invocation.method(
            #getMovieSimilars,
            [],
            {
              #movieID: movieID,
              #page: page,
            },
          ),
        )),
      ) as _i16.Future<_i13.SimiliarMoviesModel>);
  @override
  _i16.Future<_i14.MovieKeywordsModel> getMovieKeywords(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieKeywords,
          [],
          {#movieID: movieID},
        ),
        returnValue: _i16.Future<_i14.MovieKeywordsModel>.value(
            _FakeMovieKeywordsModel_12(
          this,
          Invocation.method(
            #getMovieKeywords,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i16.Future<_i14.MovieKeywordsModel>);
}
