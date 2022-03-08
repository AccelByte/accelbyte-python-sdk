from typing import Optional

from ._integration_test_case import IntegrationTestCase


class DSLogManagerTestCase(IntegrationTestCase):

    pod_name: Optional[str] = None

    def setUp(self) -> None:
        super().setUp()
        self.pod_name = "default"

    def test_check_server_logs(self):
        from accelbyte_py_sdk.api.dslogmanager import check_server_logs

        # arrange

        # act
        _, error = check_server_logs(
            pod_name=self.pod_name
        )

        # assert
        self.assertIsNone(error, error)

    def test_download_server_logs(self):
        from accelbyte_py_sdk.api.dslogmanager import download_server_logs

        # arrange

        # act
        _, error = download_server_logs(
            pod_name=self.pod_name
        )

        # assert
        self.assertIsNone(error, error)

    def test_list_terminated_servers(self):
        from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers

        # arrange

        # act
        _, error = list_terminated_servers()

        # assert
        self.assertIsNone(error, error)
