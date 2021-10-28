import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import users_presence_handler_v1 as users_presence_handler_v1_internal
from ....api.lobby.models import HandlersGetUsersPresenceResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("user_ids", type=str)
@click.option("--count_only", "count_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def users_presence_handler_v1(
        user_ids: str,
        count_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(users_presence_handler_v1_internal.__doc__)
    result, error = users_presence_handler_v1_internal(
        user_ids=user_ids,
        count_only=count_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"UsersPresenceHandlerV1 failed: {str(error)}")
    click.echo("UsersPresenceHandlerV1 success")
