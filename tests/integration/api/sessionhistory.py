from datetime import datetime, timedelta

from tests.integration.test_case import IntegrationTestCase


class SessionHistoryTestCase(IntegrationTestCase):
    # region test:admin_query_game_session_detail

    def test_admin_query_game_session_detail(self):
        from accelbyte_py_sdk.api.sessionhistory import admin_query_game_session_detail

        # arrange

        # act
        response, error = admin_query_game_session_detail()

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_query_game_session_detail

    # region test:admin_query_matchmaking_detail

    def test_admin_query_matchmaking_detail(self):
        from accelbyte_py_sdk.api.sessionhistory import admin_query_matchmaking_detail

        # arrange

        # act
        response, error = admin_query_matchmaking_detail()

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_query_matchmaking_detail

    # region test:query_total_matchmaking_match

    def test_query_total_matchmaking_match(self):
        if self.using_ags_starter:
            self.skipTest(reason="Test not yet ready for AGS Starter.")

        from accelbyte_py_sdk.api.sessionhistory import query_total_matchmaking_match

        # arrange

        # act
        fmt = "%Y-%m-%dT%H:%M:%SZ"
        now = datetime.utcnow()
        end_date = now.strftime(fmt)
        start_date = (now - timedelta(days=10)).strftime(fmt)
        response, error = query_total_matchmaking_match(
            end_date=end_date,
            start_date=start_date
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:query_total_matchmaking_match

    # end of file
