import 'package:lemmy_api_client/v3.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() {
  group('lemmy API v3', () {
    group('site', () {
      group('Search', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            Search(
              q: 'q',
              type: SearchType.all,
              listingType: PostListingType.all,
              sort: SortType.active,
              communityId: goodCommunityId,
              auth: goodAuth,
            ),
          ),
        );

        /*
        Fix this to test on a locked federation or smth
        test(
          'bad auth',
          () => lemmyThrows(
            const Search(
              q: 'q',
              type: SearchType.all,
              listingType: PostListingType.all,
              sort: SortType.active,
              auth: badAuth,
            ),
          ),
        );
        */

        // test(
        //   'bad communityName',
        //   () => lemmyThrows(const Search(
        //     q: 'q',
        //     type: SearchType.all,
        //     sort: SortType.active,
        //     communityName: badCommunityName,
        //   )),
        // );

        // test(
        //   'bad communityId',
        //   () => lemmyThrows(const Search(
        //     q: 'q',
        //     type: SearchType.all,
        //     sort: SortType.active,
        //     communityId: badCommunityId,
        //   )),
        // );
      });

      group('GetModlog', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetModlog(
              modPersonId: goodModPersonId,
              communityId: goodCommunityId,
            ),
          ),
        );

        // test(
        //   'bad modPersonId',
        //   () => lemmyThrows(const GetModlog(
        //     modPersonId: badModPersonId,
        //   )),
        // );

        // test(
        //   'bad communityId',
        //   () => lemmyThrows(const GetModlog(
        //     communityId: badCommunityId,
        //   )),
        // );
      });

      group('CreateSite', () {});

      group('EditSite', () {});

      group('GetSite', () {
        test(
          'correctly fetches',
          () => lemmy.run(GetSite(auth: goodAuth)),
        );

        /*
        revisit this on a closed federation
        test(
          'bad auth',
          () => lemmyThrows(const GetSite(auth: badAuth)),
        );
        */
      });

      /*
      TODO: this should work, figure out why it doesnt
      group('ResolveObject', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            ResolveObject(
              q: '!asklemmy@lemmy.ml',
              auth: goodAuth,
            ),
          ),
        );

        */

      test(
        'bad query',
        () => lemmyThrows(
          const ResolveObject(
            q: 'qpoqwewq91.asd',
            auth: badAuth,
          ),
        ),
      );

      test(
        'bad auth',
        () => lemmyThrows(
          const ResolveObject(
            q: '',
            auth: badAuth,
          ),
        ),
      );
    });

    group('GetSiteConfig', () {});

    group('SaveSiteConfig', () {});

    group('GetUnreadRegistrationApplicationCount', () {
      test(
        'bad auth',
        () => lemmyThrows(
          const GetUnreadRegistrationApplicationCount(
            auth: badAuth,
          ),
        ),
      );
    });

    group('ListRegistrationApplications', () {
      test(
        'bad auth',
        () => lemmyThrows(
          const ListRegistrationApplications(
            auth: badAuth,
          ),
        ),
      );
    });

    group('ApproveRegistrationApplication', () {
      test(
        'bad auth',
        () => lemmyThrows(
          const ApproveRegistrationApplication(
            approve: true,
            id: 1,
            auth: badAuth,
          ),
        ),
      );
    });
  });

  group('lemmy API v3', () {
    group('community', () {
      group('GetCommunity', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetCommunity(
              name: goodCommunityName,
              auth: goodAuth,
            ),
          ),
          //goodCommunityId = fullCommunityView.communityView.community.id;
        );

        test(
          'bad auth',
          () => lemmyThrows(const GetCommunity(auth: badAuth)),
        );
      });

      group('CreateCommunity', () {});

      group('ListCommunities', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            ListCommunities(
              type: PostListingType.all,
              sort: SortType.active,
              auth: goodAuth,
            ),
          ),
        );

        /*
        test(
          'bad auth',
          () => lemmyThrows(
            const ListCommunities(
              type: PostListingType.all,
              sort: SortType.active,
              auth: badAuth,
            ),
          ),
        );
      */
      });

      group('BanFromCommunity', () {});

      group('AddModToCommunity', () {});

      group('EditCommunity', () {});

      group('DeleteCommunity', () {});

      group('RemoveCommunity', () {});

      group('FollowCommunity', () {
        setUp(() async {
          FullCommunityView community = await lemmy.run(GetCommunity(
            name: goodCommunityName,
            auth: goodAuth,
          ));
          goodCommunityId = community.communityView.community.id;
        });

        test(
          'correctly follows',
          () => lemmy.run(
            FollowCommunity(
              communityId: goodCommunityId,
              follow: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            FollowCommunity(
              communityId: goodCommunityId,
              follow: true,
              auth: badAuth,
            ),
          ),
        );

        // test(
        //   'bad communityId',
        //   () => lemmyThrows(FollowCommunity(
        //     communityId: badCommunityId,
        //     follow: true,
        //     auth: goodAuth,
        //   )),
        // );
      });

      group('TransferCommunity', () {});

      group('BlockCommunity', () {
        setUp(() async {
          FullCommunityView community = await lemmy.run(GetCommunity(
            name: goodCommunityName,
            auth: goodAuth,
          ));
          goodCommunityId = community.communityView.community.id;
        });

        test(
          'correctly fetches',
          () => lemmy.run(
            BlockCommunity(
              communityId: goodCommunityId,
              block: false,
              auth: goodAuth,
            ),
          ),
        );
        test(
          'bad auth',
          () => lemmyThrows(
            BlockCommunity(
              communityId: goodCommunityId,
              block: false,
              auth: badAuth,
            ),
          ),
        );
        // test(
        //   'bad community id',
        //   () => lemmyThrows(BlockCommunity(
        //     communityId: badCommunityId,
        //     block: false,
        //     auth: goodAuth,
        //   )),
        // );
      });
    });
  });

  group('lemmy API v3', () {
    group('comment', () {
      group('CreateComment', () {
        test('correctly creates comment', () async {
          FullCommentView comment = await lemmy.run(CreateComment(
              content: "test", postId: goodPostId, auth: goodAuth));
          goodCommentId = comment.commentView.comment.id;
        });
      });

      group('EditComment', () {
        setUp(() async {
          FullCommunityView community = await lemmy.run(GetCommunity(
            name: goodCommunityName,
            auth: goodAuth,
          ));
          goodCommunityId = community.communityView.community.id;

          PostView post = await lemmy.run(CreatePost(
              name: "testtt", communityId: goodCommunityId, auth: goodAuth));

          FullCommentView comment = await lemmy.run(CreateComment(
              content: "test", postId: post.post.id, auth: goodAuth));
          goodMyCommentId = comment.commentView.comment.id;
        });

        test(
          'correctly edits',
          () => lemmy.run(
            EditComment(
              content: 'content',
              commentId: goodMyCommentId,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            EditComment(
              content: 'content',
              commentId: goodMyCommentId,
              auth: badAuth,
            ),
          ),
        );

        test(
          'not my comment',
          () => lemmyThrows(
            EditComment(
              content: 'content',
              commentId: badMyCommentId,
              auth: goodAuth,
            ),
          ),
        );
      });

      group('DeleteComment', () {});

      group('RemoveComment', () {});

      group('MarkCommentAsRead', () {});

      group('SaveComment', () {
        test(
          'correctly saves',
          () => lemmy.run(
            SaveComment(
              commentId: goodCommentId,
              save: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            SaveComment(
              commentId: goodCommentId,
              save: true,
              auth: badAuth,
            ),
          ),
        );

        test(
          'bad commentId',
          () => lemmyThrows(
            SaveComment(
              commentId: badCommentId,
              save: true,
              auth: goodAuth,
            ),
          ),
        );
      });

      group('CreateCommentLike', () {
        test(
          'correctly likes',
          () => lemmy.run(
            CreateCommentLike(
              commentId: goodCommentId,
              score: VoteType.up,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            CreateCommentLike(
              commentId: goodCommentId,
              score: VoteType.up,
              auth: badAuth,
            ),
          ),
        );

        // test(
        //   'bad commentId',
        //   () => lemmyThrows(CreateCommentLike(
        //     commentId: badCommentId,
        //     score: VoteType.up,
        //     auth: goodAuth,
        //   )),
        // );
      });

      group('GetComments', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetComments(
              type: CommentListingType.all,
              sort: SortType.hot,
              communityName: goodCommunityName,
              savedOnly: false,
              auth: goodAuth,
            ),
          ),
        );

        // test(
        //   'bad community id',
        //   () => lemmyThrows(const GetComments(
        //     type: CommentListingType.all,
        //     sort: SortType.active,
        //     communityId: badCommunityId,
        //   )),
        // );

        // test(
        //   'bad community name',
        //   () => lemmyThrows(const GetComments(
        //     type: CommentListingType.all,
        //     sort: SortType.active,
        //     communityName: badCommunityName,
        //   )),
        // );

        test(
          'bad token',
          () => lemmyThrows(
            const GetComments(
              type: CommentListingType.all,
              sort: SortType.active,
              savedOnly: false,
              auth: badAuth,
            ),
          ),
        );
      });

      group('CreateCommentReport', () {
        test(
          'bad auth',
          () => lemmyThrows(
            const CreateCommentReport(
              commentId: badCommentId,
              reason: '',
              auth: badAuth,
            ),
          ),
        );

        test(
          'bad commentId',
          () => lemmyThrows(
            CreateCommentReport(
              commentId: badCommentId,
              reason: '',
              auth: goodAuth,
            ),
          ),
        );
      });

      group('ResolveCommentReport', () {
        test(
          'bad auth',
          () => lemmyThrows(
            const ResolveCommentReport(
              reportId: 0,
              resolved: true,
              auth: badAuth,
            ),
          ),
        );
      });

      group('ListCommentReports', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            ListCommentReports(
              communityId: goodCommunityId,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const ListCommentReports(auth: badAuth),
          ),
        );

        test(
          'bad communityId',
          () => lemmyThrows(
            const ListCommentReports(
              communityId: badCommunityId,
              auth: badAuth,
            ),
          ),
        );
      });
    });
  });

  group('lemmy API v3', () {
    group('person', () {
      group('Login', () {});

      group('Register', () {});

      group('GetCaptcha', () {
        test(
          'correctly fetches',
          () => lemmy.run(const GetCaptcha()),
        );
      });

      group('SaveUserSettings', () {
        test(
          'correctly saves',
          () => lemmy.run(
            SaveUserSettings(
              showNsfw: true,
              theme: 'browser',
              defaultSortType: SortType.active,
              defaultListingType: PostListingType.all,
              lang: 'browser',
              showAvatars: true,
              sendNotificationsToEmail: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const SaveUserSettings(
              showNsfw: true,
              theme: 'browser',
              defaultSortType: SortType.active,
              defaultListingType: PostListingType.all,
              lang: 'browser',
              showAvatars: true,
              sendNotificationsToEmail: true,
              auth: badAuth,
            ),
          ),
        );
      });

      group('ChangePassword', () {
        test(
          'bad auth',
          () => lemmyThrows(
            const ChangePassword(
              newPassword: '',
              newPasswordVerify: '',
              oldPassword: '',
              auth: badAuth,
            ),
          ),
        );
      });

      group('GetPersonDetails', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetPersonDetails(
              savedOnly: false,
              sort: SortType.active,
              username: goodUsername,
              auth: goodAuth,
            ),
          ),
        );

        /*
        test(
          'bad auth',
          () => lemmyThrows(
            const GetPersonDetails(
              savedOnly: false,
              sort: SortType.active,
              username: goodUsername,
              auth: badAuth,
            ),
          ),
        );
        */

        // test(
        //   'no person passed',
        //   () => lemmyThrows(const GetPersonDetails(
        //     savedOnly: false,
        //     sort: SortType.active,
        //   )),
        // );

        test(
          'bad username',
          () => lemmyThrows(
            GetPersonDetails(
              savedOnly: false,
              sort: SortType.active,
              username: badUsername,
              auth: goodAuth,
            ),
          ),
        );

        // test(
        //   'bad personId',
        //   () => lemmyThrows(GetPersonDetails(
        //     savedOnly: false,
        //     sort: SortType.active,
        //     personId: badPersonId,
        //     auth: goodAuth,
        //   )),
        // );
      });

      group('MarkAllAsRead', () {
        test(
          'correctly fetches',
          () => lemmy.run(MarkAllAsRead(auth: goodAuth)),
        );

        test(
          'bad auth',
          () => lemmyThrows(const MarkAllAsRead(auth: badAuth)),
        );
      });

      group('AddAdmin', () {});

      group('BanPerson', () {});

      group('GetReplies', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetReplies(
              sort: SortType.hot,
              unreadOnly: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const GetReplies(
              sort: SortType.active,
              unreadOnly: true,
              auth: badAuth,
            ),
          ),
        );
      });

      group('GetPersonMentions', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetPersonMentions(
              sort: SortType.hot,
              unreadOnly: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const GetPersonMentions(
              sort: SortType.active,
              unreadOnly: true,
              auth: badAuth,
            ),
          ),
        );
      });

      group('MarkPersonMentionAsRead', () {});

      group('DeleteAccount', () {});

      group('PasswordReset', () {});

      group('PasswordChange', () {});

      group('CreatePrivateMessage', () {});

      group('EditPrivateMessage', () {});

      group('DeletePrivateMessage', () {});

      group('MarkPrivateMessageAsRead', () {});

      group('GetPrivateMessages', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetPrivateMessages(
              unreadOnly: true,
              auth: goodAuth,
            ),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const GetPrivateMessages(
              unreadOnly: true,
              auth: badAuth,
            ),
          ),
        );
      });

      group('GetReportCount', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetReportCount(
              communityId: goodCommunityId,
              auth: goodAuth,
            ),
          ),
        );
        test(
          'bad auth',
          () => lemmyThrows(
            const GetReportCount(
              auth: badAuth,
            ),
          ),
        );
      });

      group('GetUnreadCount', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            GetUnreadCount(auth: goodAuth),
          ),
        );

        test(
          'bad auth',
          () => lemmyThrows(
            const GetUnreadCount(auth: badAuth),
          ),
        );
      });

      /*

      TODO: fix this later, in order to test this we should find a suitable test user to block or find a user ID that is guaranteed to exist

      group('BlockPerson', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            BlockPerson(
              personId: goodPersonId,
              block: false,
              auth: goodAuth,
            ),
          ),
        );
        test(
          'bad auth',
          () => lemmyThrows(
            const BlockPerson(
              personId: goodPersonId,
              block: false,
              auth: badAuth,
            ),
          ),
        );
        // test(
        //   'bad person id',
        //   () => lemmyThrows(BlockPerson(
        //     personId: badPersonId,
        //     block: false,
        //     auth: goodAuth,
        //   )),
        // );
      });
      */

      group('GetBannedPersons', () {
        test(
          'bad auth',
          () => lemmyThrows(
            const GetBannedPersons(auth: badAuth),
          ),
        );
      });

      group('VerifyEmail', () {
        test(
          'bad token',
          () => lemmyThrows(
            const VerifyEmail(token: ''),
          ),
        );
      });
    });
  });

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

        /*
        Must be redone on a closed federation
        test(
          'bad auth',
          () => lemmyThrows(
            GetPost(
              id: goodPostId,
              auth: badAuth,
            ),
          ),
        );
        */

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
        setUp(() async {
          FullCommunityView community = await lemmy.run(GetCommunity(
            name: goodCommunityName,
            auth: goodAuth,
          ));
          goodCommunityId = community.communityView.community.id;
        });

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
            GetPosts(
              type: PostListingType.all,
              sort: SortType.active,
              savedOnly: false,
              auth: goodAuth,
            ),
          ),
        );

        /*
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
        */

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
