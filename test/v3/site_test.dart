/*

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
            const GetModlog(
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

        test(
          'bad auth',
          () => lemmyThrows(const GetSite(auth: badAuth)),
        );
      });

      group('ResolveObject', () {
        test(
          'correctly fetches',
          () => lemmy.run(
            ResolveObject(
              q: '!main@lemmy.ml',
              auth: goodAuth,
            ),
          ),
        );

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
  });
}

*/