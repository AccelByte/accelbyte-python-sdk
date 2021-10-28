import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_list_of_friends as get_list_of_friends_internal
from ....api.lobby.models import ModelGetFriendsResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("user_id", type=str)
@click.option("--limit", "limit", type=str)
@click.option("--offset", "offset", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_list_of_friends(
        user_id: str,
        limit: Optional[str] = None,
        offset: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_list_of_friends_internal.__doc__)
    result, error = get_list_of_friends_internal(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"get list of friends failed: {str(error)}")
    click.echo("get list of friends success")
