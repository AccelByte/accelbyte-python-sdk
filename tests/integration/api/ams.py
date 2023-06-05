from tests.integration.test_case import IntegrationTestCase


class AMSTestCase(IntegrationTestCase):

    # region test:health_check

    def test_health_check(self):
        from accelbyte_py_sdk.api.ams import basic_health_check

        # arrange

        # act
        _, error = basic_health_check()

        # assert
        self.assertIsNone(error, error)

    # endregion test:health_check

    # region test:info_regions

    def test_info_regions(self):
        from accelbyte_py_sdk.api.ams import info_regions

        # arrange

        # act
        _, error = info_regions()

        # assert
        self.assertIsNone(error, error)

    # endregion test:info_regions

    # region test:info_supported_instances

    def test_info_supported_instances(self):
        from accelbyte_py_sdk.api.ams import info_supported_instances

        # arrange

        # act
        _, error = info_supported_instances()

        # assert
        self.assertIsNone(error, error)

    # endregion test:info_supported_instances

    # end of file
