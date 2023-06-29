/*

import 'package:lemmy_api_client/v3.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() {
  group('lemmy API v3', () {
    group('post', () {
      group('GetPost', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetPost(
              id: goodPostId,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            GetPost(
              id: goodPostId,
              auth: badAuth,
            ),
          ),
        );

        test(
          'bad id',
          () => lemmyThrows(
            const GetPost(
              id: badPostId,
            ),
          ),
        );
      });

      group('CreatePost', () {
        test('create post', () async {
          final response = await lemmy.run(
            CreatePost(
              name: 'Joe Test',
              communityId: goodCommunityId,
              auth: goodAuth,
            ),
          );

          goodPostId = response.post.id;
        });
      });

      group('GetPosts', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            const GetPosts(
              type: PostListingType.all,
              sort: SortType.active,
              savedOnly: false,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const GetPosts(
              type: PostListingType.all,
              sort: SortType.active,
              savedOnly: false,
              auth: badAuth,
            ),
          ),
        );

        // test(
        //   'bad communityId',
        //   () => lemmyThrows(const GetPosts(
        //     type: PostListingType.all,
        //     sort: SortType.active,
        //     communityName: badCommunityName,
        //   )),
        // );

        // test(
        //   'bad communityName',
        //   () => lemmyThrows(const GetPosts(
        //     type: PostListingType.all,
        //     sort: SortType.active,
        //     communityId: badCommunityId,
        //   )),
        // );
      });

      group('CreatePostLike', () {
        test(
          'correctly likes',
          () => lemmy.run(
            CreatePostLike(
              postId: goodPostId,
              score: VoteType.down,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            CreatePostLike(
              postId: goodPostId,
              score: VoteType.down,
              auth: badAuth,
            ),
          ),
        );

        // test(
        //   'bad postId',
        //   () => lemmyThrows(CreatePostLike(
        //     postId: badPostId,
        //     score: VoteType.down,
        //     auth: goodAuth,
        //   )),
        // );
      });

      group('EditPost', () {});

      group('DeletePost', () {});

      group('RemovePost', () {});

      group('LockPost', () {});

      group('StickyPost', () {});

      group('SavePost', () {
        test(
          'correctly saves',
          () => lemmy.run(
            SavePost(
              postId: goodPostId,
              save: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            SavePost(
              postId: goodPostId,
              save: true,
              auth: badAuth,
            ),
          ),
        );

        test(
          'bad postId',
          () => lemmyThrows(
            SavePost(
              postId: badPostId,
              save: true,
              auth: goodAuth,
            ),
          ),
        );
      });

      /*

      Keeping this in comments since its a good meme! 
      group('GetSiteMetadata', () {
        test('correctly fetches', () async {
          final metadata = await run(
            const GetSiteMetadata(
              url: 'https://www.youtube.com/watch?v=mFyUrebJbDg',
            ),
          );

          expect(metadata.title, 'SO SAD THAT STEVE JOBS DIED OF LIGMA');
          expect(
            metadata.description,
            'Stolen from apparently this https://youtu.be/maAIWplFWUwI think I actually just'
            " saved this off twitter or something so I don't know who really made it.",
          );
          expect(
            metadata.image,
            'https://i.ytimg.com/vi/mFyUrebJbDg/hqdefault.jpg',
          );
        });

        // test(
        //   'handles 404 urls',
        //   () => lemmyThrows(
        //     const GetSiteMetadata(url: 'https://www.asdajskda.com'),
        //   ),
        // );
      });

      */

      group('GetSiteMetadata', () {
        test('correctly fetches', () async {
          final metadata = await lemmy.run(
            const GetSiteMetadata(
              url: 'https://www.google.com',
            ),
          );
          print(metadata.description);

          expect(metadata.title, 'Google');

          expect(
            metadata.description,
            "Search the world's information, including webpages, images, videos and more. Google has many special features to help you find exactly what you're looking for.",
          );
          expect(
            metadata.image,
            'http://www.google.com//images/branding/googleg/1x/googleg_standard_color_128dp.png',
          );
        });

        // test(
        //   'handles 404 urls',
        //   () => lemmyThrows(
        //     const GetSiteMetadata(url: 'https://www.asdajskda.com'),
        //   ),
        // );
      });

      group('CreatePostReport', () {
        test(
          'bad auth',
          () => lemmyThrows(
            const CreatePostReport(
              postId: badPostId,
              reason: '',
              auth: badAuth,
            ),
          ),
        );

        test(
          'bad postId',
          () => lemmyThrows(
            CreatePostReport(
              postId: badPostId,
              reason: '',
              auth: goodAuth,
            ),
          ),
        );
      });

      group('ResolvePostReport', () {
        test(
          'bad auth',
          () => lemmyThrows(
            const ResolvePostReport(
              reportId: 0,
              resolved: true,
              auth: badAuth,
            ),
          ),
        );
      });

      group('ListPostReports', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            ListPostReports(
              communityId: goodCommunityId,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const ListPostReports(auth: badAuth),
          ),
        );

        test(
          'bad communityId',
          () => lemmyThrows(
            const ListPostReports(
              communityId: badCommunityId,
              auth: badAuth,
            ),
          ),
        );
      });
    });
  });
}
*/
