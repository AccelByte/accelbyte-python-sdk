import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import register_server as register_server_internal
from ....api.dsmc.models import ModelsRegisterServerRequest
from ....api.dsmc.models import ModelsServer
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def register_server(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(register_server_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsRegisterServerRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = register_server_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"RegisterServer failed: {str(error)}")
    click.echo("RegisterServer success")
