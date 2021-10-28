import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import add_player_to_session as add_player_to_session_internal
from ....api.sessionbrowser.models import ModelsAddPlayerRequest
from ....api.sessionbrowser.models import ModelsAddPlayerResponse
from ....api.sessionbrowser.models import RestapiErrorResponseV2


@click.command()
@click.argument("body", type=str)
@click.argument("session_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_player_to_session(
        body: str,
        session_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(add_player_to_session_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsAddPlayerRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = add_player_to_session_internal(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AddPlayerToSession failed: {str(error)}")
    click.echo("AddPlayerToSession success")
