import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import add_friends_without_confirmation as add_friends_without_confirmation_internal
from ....api.lobby.models import ModelBulkAddFriendsRequest
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_friends_without_confirmation(
        body: str,
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(add_friends_without_confirmation_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelBulkAddFriendsRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = add_friends_without_confirmation_internal(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"addFriendsWithoutConfirmation failed: {str(error)}")
    click.echo("addFriendsWithoutConfirmation success")
