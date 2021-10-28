import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_personal_chat_history_v1_public as get_personal_chat_history_v1_public_internal
from ....api.lobby.models import ModelChatMessageResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("friend_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_personal_chat_history_v1_public(
        friend_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_personal_chat_history_v1_public_internal.__doc__)
    result, error = get_personal_chat_history_v1_public_internal(
        friend_id=friend_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPersonalChatHistoryV1Public failed: {str(error)}")
    click.echo("getPersonalChatHistoryV1Public success")
