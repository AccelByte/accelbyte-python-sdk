from typing import Optional

from ._integration_test_case import IntegrationTestCase


class DSLogManagerTestCase(IntegrationTestCase):

    pod_name: Optional[str] = None

    def setUp(self) -> None:
        from accelbyte_py_sdk.api.dsmc import get_all_pod_config
        from accelbyte_py_sdk.api.dsmc.models import ModelsListPodConfigResponse
        from accelbyte_py_sdk.api.dsmc.models import ModelsPodConfigRecord

        super().setUp()
        result, error = get_all_pod_config(count=10, offset=0)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsListPodConfigResponse)
        self.assertTrue(len(result.pod_configs) > 0)
        self.assertIsNotNone(result.pod_configs[0])
        pod_config_record = result.pod_configs[0]
        self.assertIsInstance(pod_config_record, ModelsPodConfigRecord)
        self.assertIsNotNone(pod_config_record.name)
        self.pod_name = pod_config_record.name

    def test_check_server_logs(self):
        from accelbyte_py_sdk.api.dslogmanager import check_server_logs
        from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers
        from accelbyte_py_sdk.api.dslogmanager.models import ModelsListTerminatedServersResponse

        # arrange
        result, error = list_terminated_servers(limit=20)
        self.assertIsNone(error, error)
        self.assertIsInstance(result, ModelsListTerminatedServersResponse)

        # act
        if result.data:
            _, error = check_server_logs(pod_name=self.pod_name)
        else:
            self.skipTest(reason="No terminated servers to use.")

        # assert
        self.assertIsNone(error, error)

    def test_download_server_logs(self):
        from accelbyte_py_sdk.api.dslogmanager import download_server_logs
        from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers
        from accelbyte_py_sdk.api.dslogmanager.models import ModelsListTerminatedServersResponse

        # arrange
        result, error = list_terminated_servers(limit=20)
        self.assertIsNone(error, error)
        self.assertIsInstance(result, ModelsListTerminatedServersResponse)

        # act
        if result.data:
            _, error = download_server_logs(pod_name=self.pod_name)
        else:
            self.skipTest(reason="No terminated servers to use.")

        # assert
        self.assertIsNone(error, error)

    def test_list_terminated_servers(self):
        from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers

        # arrange

        # act
        _, error = list_terminated_servers(limit=20)

        # assert
        self.assertIsNone(error, error)
