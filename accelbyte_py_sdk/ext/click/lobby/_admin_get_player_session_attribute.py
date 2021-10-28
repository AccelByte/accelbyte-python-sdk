import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_player_session_attribute as admin_get_player_session_attribute_internal
from ....api.lobby.models import ModelsGetPlayerSessionAttributeResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("user_id", type=str)
@click.argument("attribute", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_player_session_attribute(
        user_id: str,
        attribute: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_player_session_attribute_internal.__doc__)
    result, error = admin_get_player_session_attribute_internal(
        user_id=user_id,
        attribute=attribute,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetPlayerSessionAttribute failed: {str(error)}")
    click.echo("adminGetPlayerSessionAttribute success")
