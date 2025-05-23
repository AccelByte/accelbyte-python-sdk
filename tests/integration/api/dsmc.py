import time
from pathlib import Path
from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchMember
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchParty
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchingAlly


class DSMCTestCase(IntegrationTestCase):
    exported_filename: str = "exported"

    def tearDown(self) -> None:
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    def test_export_config_v1(self):
        from accelbyte_py_sdk.api.dsmc import export_config_v1
        from accelbyte_py_sdk.api.dsmc.models import ResponseError

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = export_config_v1()

        if result is not None:
            exported_file_path.write_bytes(result)

        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if (
            error
            and isinstance(error, ResponseError)
            and error.error_code == 720166
            and "does not exist" in error.error_message
        ):
            self.skipTest(reason=f"No config to export. {str(error)}")
        # DOC-REDACT(end)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    def test_update_deployment(self):
        from accelbyte_py_sdk.api.dsmc import get_deployment
        from accelbyte_py_sdk.api.dsmc import update_deployment
        from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDeploymentRequest

        # arrange
        deployment_name = "default"
        result, error = get_deployment(
            deployment=deployment_name,
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if error:
            self.skipTest(reason="unable to get deployment")
            return
        # DOC-REDACT(end)

        # act
        _, error = update_deployment(
            body=ModelsUpdateDeploymentRequest.create(
                allow_version_override=result.allow_version_override,
                buffer_count=result.buffer_count,
                buffer_percent=result.buffer_percent,
                configuration=result.configuration,
                enable_region_overrides=result.enable_region_overrides,
                game_version=result.game_version,
                max_count=result.max_count,
                min_count=result.min_count,
                regions=result.regions,
                session_timeout=0,
                unlimited=result.unlimited,
                use_buffer_percent=result.use_buffer_percent,
            ),
            deployment=deployment_name,
        )

        # assert
        self.assertIsNone(error, error)

    def test_update_deployment_with_missing_image(self):
        from accelbyte_py_sdk.api.dsmc import get_deployment
        from accelbyte_py_sdk.api.dsmc import update_deployment
        from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDeploymentRequest

        # arrange
        deployment_name = "default"
        result, error = get_deployment(
            deployment=deployment_name,
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if error:
            self.skipTest(reason="unable to get deployment")
            return
        # DOC-REDACT(end)

        # act
        _, error = update_deployment(
            body=ModelsUpdateDeploymentRequest.create(
                allow_version_override=result.allow_version_override,
                buffer_count=result.buffer_count,
                buffer_percent=result.buffer_percent,
                configuration=result.configuration,
                enable_region_overrides=result.enable_region_overrides,
                game_version="xxx",
                max_count=result.max_count,
                min_count=result.min_count,
                regions=result.regions,
                session_timeout=0,
                unlimited=result.unlimited,
                use_buffer_percent=result.use_buffer_percent,
            ),
            deployment=deployment_name,
        )

        # assert
        self.assertIsNotNone(error, error)
        self.assertEqual(720510, error.error_code)
        self.assertIn("DS image not found", error.error_message)
