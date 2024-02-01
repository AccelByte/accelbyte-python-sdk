from tests.integration.test_case import IntegrationTestCase


class DSArtifactTestCase(IntegrationTestCase):
    def test_list_all_queue(self):
        from accelbyte_py_sdk.api.dsartifact import list_all_queue

        # arrange

        # act
        _, error = list_all_queue(limit=20)

        # assert
        self.assertIsNone(error)

    def test_list_terminated_servers(self):
        from accelbyte_py_sdk.api.dsartifact import list_terminated_servers

        # arrange

        # act
        _, error = list_terminated_servers(limit=20)

        # assert
        self.assertIsNone(error)

    # end of file
