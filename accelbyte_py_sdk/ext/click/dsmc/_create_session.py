import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import create_session as create_session_internal
from ....api.dsmc.models import ModelsCreateSessionRequest
from ....api.dsmc.models import ModelsSessionResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_session(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_session_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsCreateSessionRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_session_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateSession failed: {str(error)}")
    click.echo("CreateSession success")
