// Mocks generated by Mockito 5.3.2 from annotations
// in moviegoers/test/_utils/mock/test_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i13;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:moviegoers/src/core/init/network/network_exception.dart'
    as _i14;
import 'package:moviegoers/src/data/datasources/remote/movie/movie_remote_data_source.dart'
    as _i24;
import 'package:moviegoers/src/data/models/movie/movie_credit/movie_credit_model.dart'
    as _i7;
import 'package:moviegoers/src/data/models/movie/movie_detail/movie_detail_model.dart'
    as _i6;
import 'package:moviegoers/src/data/models/movie/movie_external_id/movie_external_id_model.dart'
    as _i8;
import 'package:moviegoers/src/data/models/movie/movie_lists/now_playing/now_playing_movies_model.dart'
    as _i4;
import 'package:moviegoers/src/data/models/movie/movie_lists/popular/popular_movies_model.dart'
    as _i3;
import 'package:moviegoers/src/data/models/movie/movie_lists/recommendation/recommendation_movies_model.dart'
    as _i10;
import 'package:moviegoers/src/data/models/movie/movie_lists/similiar/similiar_movies_model.dart'
    as _i11;
import 'package:moviegoers/src/data/models/movie/movie_lists/upcoming/upcoming_movies_model.dart'
    as _i5;
import 'package:moviegoers/src/data/models/movie/movie_video/movie_video_model.dart'
    as _i9;
import 'package:moviegoers/src/domain/entities/movie/movie_credit/movie_credit.dart'
    as _i19;
import 'package:moviegoers/src/domain/entities/movie/movie_detail/movie_detail.dart'
    as _i18;
import 'package:moviegoers/src/domain/entities/movie/movie_external_id/movie_external_id.dart'
    as _i20;
import 'package:moviegoers/src/domain/entities/movie/movie_list/now_playing_movies.dart'
    as _i16;
import 'package:moviegoers/src/domain/entities/movie/movie_list/popular_movies.dart'
    as _i15;
import 'package:moviegoers/src/domain/entities/movie/movie_list/recommendation_movies.dart'
    as _i22;
import 'package:moviegoers/src/domain/entities/movie/movie_list/similiar_movies.dart'
    as _i23;
import 'package:moviegoers/src/domain/entities/movie/movie_list/upcoming_movies.dart'
    as _i17;
import 'package:moviegoers/src/domain/entities/movie/movie_video/movie_video.dart'
    as _i21;
import 'package:moviegoers/src/domain/repositories/movie_repository.dart'
    as _i12;

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

class _FakeMovieDetailModel_4 extends _i1.SmartFake
    implements _i6.MovieDetailModel {
  _FakeMovieDetailModel_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieCreditModel_5 extends _i1.SmartFake
    implements _i7.MovieCreditModel {
  _FakeMovieCreditModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieExternalIdModel_6 extends _i1.SmartFake
    implements _i8.MovieExternalIdModel {
  _FakeMovieExternalIdModel_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieVideoModel_7 extends _i1.SmartFake
    implements _i9.MovieVideoModel {
  _FakeMovieVideoModel_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRecommendationMoviesModel_8 extends _i1.SmartFake
    implements _i10.RecommendationMoviesModel {
  _FakeRecommendationMoviesModel_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSimiliarMoviesModel_9 extends _i1.SmartFake
    implements _i11.SimiliarMoviesModel {
  _FakeSimiliarMoviesModel_9(
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
class MockMovieRepository extends _i1.Mock implements _i12.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<
      _i2.Either<_i14.NetworkExceptions, _i15.PopularMovies>> getPopularMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
          {#page: page},
        ),
        returnValue: _i13.Future<
                _i2.Either<_i14.NetworkExceptions, _i15.PopularMovies>>.value(
            _FakeEither_0<_i14.NetworkExceptions, _i15.PopularMovies>(
          this,
          Invocation.method(
            #getPopularMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i13.Future<_i2.Either<_i14.NetworkExceptions, _i15.PopularMovies>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i16.NowPlayingMovies>>
      getNowPlayingMovies({required int? page}) => (super.noSuchMethod(
            Invocation.method(
              #getNowPlayingMovies,
              [],
              {#page: page},
            ),
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions,
                        _i16.NowPlayingMovies>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i16.NowPlayingMovies>(
              this,
              Invocation.method(
                #getNowPlayingMovies,
                [],
                {#page: page},
              ),
            )),
          ) as _i13.Future<
              _i2.Either<_i14.NetworkExceptions, _i16.NowPlayingMovies>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i17.UpcomingMovies>>
      getUpcomingMovies({required int? page}) => (super.noSuchMethod(
            Invocation.method(
              #getUpcomingMovies,
              [],
              {#page: page},
            ),
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions,
                        _i17.UpcomingMovies>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i17.UpcomingMovies>(
              this,
              Invocation.method(
                #getUpcomingMovies,
                [],
                {#page: page},
              ),
            )),
          ) as _i13
              .Future<_i2.Either<_i14.NetworkExceptions, _i17.UpcomingMovies>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i18.MovieDetail>>
      getMovieDetails({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieDetails,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions, _i18.MovieDetail>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i18.MovieDetail>(
              this,
              Invocation.method(
                #getMovieDetails,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i13
              .Future<_i2.Either<_i14.NetworkExceptions, _i18.MovieDetail>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i19.MovieCredit>>
      getMovieCredits({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieCredits,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions, _i19.MovieCredit>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i19.MovieCredit>(
              this,
              Invocation.method(
                #getMovieCredits,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i13
              .Future<_i2.Either<_i14.NetworkExceptions, _i19.MovieCredit>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i20.MovieExternalId>>
      getMovieExternalIDs({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieExternalIDs,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions,
                        _i20.MovieExternalId>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i20.MovieExternalId>(
              this,
              Invocation.method(
                #getMovieExternalIDs,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i13.Future<
              _i2.Either<_i14.NetworkExceptions, _i20.MovieExternalId>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i21.MovieVideo>>
      getMovieVideos({required String? movieID}) => (super.noSuchMethod(
            Invocation.method(
              #getMovieVideos,
              [],
              {#movieID: movieID},
            ),
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions, _i21.MovieVideo>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i21.MovieVideo>(
              this,
              Invocation.method(
                #getMovieVideos,
                [],
                {#movieID: movieID},
              ),
            )),
          ) as _i13
              .Future<_i2.Either<_i14.NetworkExceptions, _i21.MovieVideo>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i22.RecommendationMovies>>
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
            returnValue: _i13.Future<
                _i2.Either<_i14.NetworkExceptions,
                    _i22.RecommendationMovies>>.value(_FakeEither_0<
                _i14.NetworkExceptions, _i22.RecommendationMovies>(
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
          ) as _i13.Future<
              _i2.Either<_i14.NetworkExceptions, _i22.RecommendationMovies>>);
  @override
  _i13.Future<_i2.Either<_i14.NetworkExceptions, _i23.SimiliarMovies>>
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
            returnValue: _i13.Future<
                    _i2.Either<_i14.NetworkExceptions,
                        _i23.SimiliarMovies>>.value(
                _FakeEither_0<_i14.NetworkExceptions, _i23.SimiliarMovies>(
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
          ) as _i13
              .Future<_i2.Either<_i14.NetworkExceptions, _i23.SimiliarMovies>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i24.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<_i3.PopularMoviesModel> getPopularMovies({required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
          {#page: page},
        ),
        returnValue:
            _i13.Future<_i3.PopularMoviesModel>.value(_FakePopularMoviesModel_1(
          this,
          Invocation.method(
            #getPopularMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i13.Future<_i3.PopularMoviesModel>);
  @override
  _i13.Future<_i4.NowPlayingMoviesModel> getNowPlayingMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNowPlayingMovies,
          [],
          {#page: page},
        ),
        returnValue: _i13.Future<_i4.NowPlayingMoviesModel>.value(
            _FakeNowPlayingMoviesModel_2(
          this,
          Invocation.method(
            #getNowPlayingMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i13.Future<_i4.NowPlayingMoviesModel>);
  @override
  _i13.Future<_i5.UpcomingMoviesModel> getUpcomingMovies(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingMovies,
          [],
          {#page: page},
        ),
        returnValue: _i13.Future<_i5.UpcomingMoviesModel>.value(
            _FakeUpcomingMoviesModel_3(
          this,
          Invocation.method(
            #getUpcomingMovies,
            [],
            {#page: page},
          ),
        )),
      ) as _i13.Future<_i5.UpcomingMoviesModel>);
  @override
  _i13.Future<_i6.MovieDetailModel> getMovieDetails(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieDetails,
          [],
          {#movieID: movieID},
        ),
        returnValue:
            _i13.Future<_i6.MovieDetailModel>.value(_FakeMovieDetailModel_4(
          this,
          Invocation.method(
            #getMovieDetails,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i13.Future<_i6.MovieDetailModel>);
  @override
  _i13.Future<_i7.MovieCreditModel> getMovieCredits(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieCredits,
          [],
          {#movieID: movieID},
        ),
        returnValue:
            _i13.Future<_i7.MovieCreditModel>.value(_FakeMovieCreditModel_5(
          this,
          Invocation.method(
            #getMovieCredits,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i13.Future<_i7.MovieCreditModel>);
  @override
  _i13.Future<_i8.MovieExternalIdModel> getMovieExternalIDs(
          {required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieExternalIDs,
          [],
          {#movieID: movieID},
        ),
        returnValue: _i13.Future<_i8.MovieExternalIdModel>.value(
            _FakeMovieExternalIdModel_6(
          this,
          Invocation.method(
            #getMovieExternalIDs,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i13.Future<_i8.MovieExternalIdModel>);
  @override
  _i13.Future<_i9.MovieVideoModel> getMovieVideos({required String? movieID}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieVideos,
          [],
          {#movieID: movieID},
        ),
        returnValue:
            _i13.Future<_i9.MovieVideoModel>.value(_FakeMovieVideoModel_7(
          this,
          Invocation.method(
            #getMovieVideos,
            [],
            {#movieID: movieID},
          ),
        )),
      ) as _i13.Future<_i9.MovieVideoModel>);
  @override
  _i13.Future<_i10.RecommendationMoviesModel> getMovieRecommendations({
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
        returnValue: _i13.Future<_i10.RecommendationMoviesModel>.value(
            _FakeRecommendationMoviesModel_8(
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
      ) as _i13.Future<_i10.RecommendationMoviesModel>);
  @override
  _i13.Future<_i11.SimiliarMoviesModel> getMovieSimilars({
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
        returnValue: _i13.Future<_i11.SimiliarMoviesModel>.value(
            _FakeSimiliarMoviesModel_9(
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
      ) as _i13.Future<_i11.SimiliarMoviesModel>);
}