import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import join_session as join_session_internal
from ....api.sessionbrowser.models import ModelsJoinGameSessionRequest
from ....api.sessionbrowser.models import ModelsSessionResponse
from ....api.sessionbrowser.models import RestapiErrorResponseV2


@click.command()
@click.argument("body", type=str)
@click.argument("session_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def join_session(
        body: str,
        session_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(join_session_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsJoinGameSessionRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = join_session_internal(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"JoinSession failed: {str(error)}")
    click.echo("JoinSession success")
