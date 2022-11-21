from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.session.models import ApimodelsCreateGameSessionRequest


class SessionTestCase(IntegrationTestCase):
    def test_public_query_game_sessions(self):
        from accelbyte_py_sdk.api.session import public_query_game_sessions

        # arrange

        # act
        result, error = public_query_game_sessions(body={})

        # assert
        self.assertIsNone(error, error)
