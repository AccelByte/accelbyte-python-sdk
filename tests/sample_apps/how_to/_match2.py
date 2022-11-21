from ._integration_test_case import IntegrationTestCase


class Match2TestCase(IntegrationTestCase):
    def test_get_healthcheck_info(self):
        from accelbyte_py_sdk.api.match2 import get_healthcheck_info

        # arrange

        # act
        x, error = get_healthcheck_info()

        # assert
        self.assertIsNone(error, error)

    def test_match_function_list(self):
        from accelbyte_py_sdk.api.match2 import match_function_list

        # arrange

        # act
        result, error = match_function_list()

        # assert
        self.assertIsNone(error, error)
