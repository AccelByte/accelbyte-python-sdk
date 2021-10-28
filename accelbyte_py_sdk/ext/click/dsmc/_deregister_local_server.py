import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import deregister_local_server as deregister_local_server_internal
from ....api.dsmc.models import ModelsDeregisterLocalServerRequest
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def deregister_local_server(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(deregister_local_server_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsDeregisterLocalServerRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = deregister_local_server_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeregisterLocalServer failed: {str(error)}")
    click.echo("DeregisterLocalServer success")
