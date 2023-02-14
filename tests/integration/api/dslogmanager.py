from pathlib import Path
from typing import Optional

from tests.integration.test_case import IntegrationTestCase


class DSLogManagerTestCase(IntegrationTestCase):
    exported_filename: str = "exported"
    pod_name: Optional[str] = None

    def tearDown(self) -> None:
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # noinspection PyMethodMayBeStatic
    def pre_fetch_pod_name(self):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.dsmc import get_all_pod_config
        from accelbyte_py_sdk.api.dsmc.models import ModelsListPodConfigResponse
        from accelbyte_py_sdk.api.dsmc.models import ModelsPodConfigRecord

        result, error = get_all_pod_config(count=1, offset=0)
        if (
            error is None
            and isinstance(result, ModelsListPodConfigResponse)
            and len(result.pod_configs) > 0
            and result.pod_configs[0] is not None
            and isinstance(result.pod_configs[0], ModelsPodConfigRecord)
            and result.pod_configs[0].name is not None
        ):
            return result.pod_configs[0].name
        else:
            return None

    # noinspection PyMethodMayBeStatic
    def pre_fetch_terminated_servers(self):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers
        from accelbyte_py_sdk.api.dslogmanager.models import (
            ModelsListTerminatedServersResponse,
        )

        result, error = list_terminated_servers(limit=1)
        if (
            error is not None
            and isinstance(result, ModelsListTerminatedServersResponse)
            and len(result.data) > 0
        ):
            return result.data
        else:
            return []

    # region test:check_server_logs

    def test_check_server_logs(self):
        from accelbyte_py_sdk.api.dslogmanager import check_server_logs

        # arrange
        pod_name = self.pre_fetch_pod_name()
        if not pod_name:
            self.skipTest(reason="Can't get a pod name to use.")

        if not self.pre_fetch_terminated_servers():
            self.skipTest(reason="No terminated servers to use.")

        # act
        _, error = check_server_logs(pod_name=self.pod_name)

        # assert
        self.assertIsNone(error, error)

    # endregion test:check_server_logs

    # region test:download_server_logs

    def test_download_server_logs(self):
        from accelbyte_py_sdk.api.dslogmanager import download_server_logs

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)
        pod_name = self.pre_fetch_pod_name()
        if not pod_name:
            self.skipTest(reason="Can't get a pod name to use.")

        if not self.pre_fetch_terminated_servers():
            self.skipTest(reason="No terminated servers to use.")

        # act
        result, error = download_server_logs(pod_name=self.pod_name)

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:download_server_logs

    # region test:list_terminated_servers

    def test_list_terminated_servers(self):
        from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers

        # arrange

        # act
        _, error = list_terminated_servers(limit=20)

        # assert
        self.assertIsNone(error, error)

    # endregion test:list_terminated_servers

    # end of file
