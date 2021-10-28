import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import personal_chat_history as personal_chat_history_internal
from ....api.lobby.models import ModelChatMessageResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("user_id", type=str)
@click.argument("friend_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def personal_chat_history(
        user_id: str,
        friend_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(personal_chat_history_internal.__doc__)
    result, error = personal_chat_history_internal(
        user_id=user_id,
        friend_id=friend_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"personalChatHistory failed: {str(error)}")
    click.echo("personalChatHistory success")
