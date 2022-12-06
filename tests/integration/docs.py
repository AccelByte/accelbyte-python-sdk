from pathlib import Path

from .test_case import IntegrationTestCase
from .utils import DOTENV_FILE


class DocsTestCase(IntegrationTestCase):
    @classmethod
    def setUpClass(cls) -> None:
        from accelbyte_py_sdk.core import DotEnvFileConfigRepository

        dotenv_file = Path(DOTENV_FILE).resolve()
        if dotenv_file.exists():
            DotEnvFileConfigRepository(dotenv_file=dotenv_file, set_env_var=True)

    def setUp(self) -> None:
        import accelbyte_py_sdk

        if accelbyte_py_sdk.is_initialized():
            accelbyte_py_sdk.reset()

    # region test:initialize_sdk_and_call_token_grant_v3

    def test_initialize_sdk_and_call_token_grant_v3(self):
        from accelbyte_py_sdk.core import get_env_config

        base_url, client_id, client_secret, namespace = get_env_config()

        import accelbyte_py_sdk
        from accelbyte_py_sdk.core import MyConfigRepository
        from accelbyte_py_sdk.api.iam import token_grant_v3

        config = MyConfigRepository(
            base_url=base_url,
            client_id=client_id,
            client_secret=client_secret,
            namespace=namespace,
        )

        accelbyte_py_sdk.initialize(
            options={
                "config": config,
            },
        )

        _, error = token_grant_v3(grant_type="client_credentials")
        if error:
            print(error)

        self.assertIsNone(error)

    # endregion test:initialize_sdk_and_call_token_grant_v3

    # end of file
