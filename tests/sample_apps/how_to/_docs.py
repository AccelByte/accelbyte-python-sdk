from pathlib import Path

from ._integration_test_case import IntegrationTestCase


class DocsTestCase(IntegrationTestCase):

    @classmethod
    def setUpClass(cls) -> None:
        from ..how_to import DOTENV_FILE
        from accelbyte_py_sdk.core import DotEnvFileConfigRepository

        dotenv_file = Path(DOTENV_FILE).resolve()
        if dotenv_file.exists():
            DotEnvFileConfigRepository(dotenv_file=dotenv_file, set_env_var=True)

    def setUp(self) -> None:
        import accelbyte_py_sdk

        if accelbyte_py_sdk.is_initialized():
            accelbyte_py_sdk.reset()

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
            namespace=namespace
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
