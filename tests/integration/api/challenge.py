from tests.integration.test_case import IntegrationTestCase


class ChallengeTestCase(IntegrationTestCase):
    # region test:get_challenges

    def test_get_challenges(self):
        from accelbyte_py_sdk.api.challenge import get_challenges

        # arrange

        # act
        response, error = get_challenges()

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_challenges

    # region test:public_get_user_rewards

    def test_public_get_user_rewards(self):
        from accelbyte_py_sdk.api.challenge import public_get_user_rewards

        # arrange

        # act
        response, error = public_get_user_rewards()

        # assert
        self.assertIsNone(error, error)

    # endregion test:public_get_user_rewards

    # end of file
