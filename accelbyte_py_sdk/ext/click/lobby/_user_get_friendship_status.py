import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import user_get_friendship_status as user_get_friendship_status_internal
from ....api.lobby.models import ModelUserGetFriendshipStatusResponse
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("friend_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def user_get_friendship_status(
        friend_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(user_get_friendship_status_internal.__doc__)
    result, error = user_get_friendship_status_internal(
        friend_id=friend_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"userGetFriendshipStatus failed: {str(error)}")
    click.echo("userGetFriendshipStatus success")
