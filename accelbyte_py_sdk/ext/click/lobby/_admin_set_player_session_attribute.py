import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_set_player_session_attribute as admin_set_player_session_attribute_internal
from ....api.lobby.models import ModelsSetPlayerSessionAttributeRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_set_player_session_attribute(
        body: str,
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_set_player_session_attribute_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsSetPlayerSessionAttributeRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_set_player_session_attribute_internal(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminSetPlayerSessionAttribute failed: {str(error)}")
    click.echo("adminSetPlayerSessionAttribute success")
