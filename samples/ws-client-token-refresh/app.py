import asyncio

from accelbyte_py_sdk.core import (
    AccelByteSDK,
    DotEnvFileConfigRepository,
    HttpxHttpClient,
    InMemoryTokenRepository,
    get_env_user_credentials,
)
import accelbyte_py_sdk.services.auth as auth_service
import accelbyte_py_sdk.api.lobby.wss_models as wss_models
from accelbyte_py_sdk.api.lobby.ws_client import LobbyWSClient


async def main() -> None:
    config_repo = DotEnvFileConfigRepository(".env", set_env_var=True)
    token_repo = InMemoryTokenRepository()
    http_client = HttpxHttpClient()

    sdk = AccelByteSDK()
    sdk.initialize(
        options={
            "config": config_repo,
            "token": token_repo,
            "http": http_client,
        }
    )

    user_creds = get_env_user_credentials()
    result, error = await auth_service.login_user_async(*user_creds, sdk=sdk)
    if error:
        raise Exception(error)

    ws_client = LobbyWSClient(
        uri=config_repo.get_base_url(),
        access_token=token_repo.get_access_token(),
    )
    ws_client.listeners.append(on_message)

    token_repo.register_observer(ws_client)

    await ws_client.connect()

    await asyncio.sleep(1)

    old_access_token = token_repo.get_access_token()

    refresh_token = token_repo.get_refresh_token()
    result, error = await auth_service.refresh_login_async(refresh_token, sdk=sdk)
    if error:
        raise Exception(error)

    await asyncio.sleep(1)

    new_access_token = token_repo.get_access_token()
    assert old_access_token != new_access_token

    await ws_client.send(wss_models.ListOfFriendsRequest().to_wsm())

    await asyncio.sleep(1)

    await ws_client.disconnect()


async def on_message(message: str) -> None:
    print(message.rstrip() + "\n")


if __name__ == "__main__":
    asyncio.run(main())
