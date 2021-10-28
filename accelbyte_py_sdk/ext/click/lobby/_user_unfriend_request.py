import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import user_unfriend_request as user_unfriend_request_internal
from ....api.lobby.models import ModelUserUnfriendRequest
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def user_unfriend_request(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(user_unfriend_request_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUserUnfriendRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = user_unfriend_request_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"userUnfriendRequest failed: {str(error)}")
    click.echo("userUnfriendRequest success")
