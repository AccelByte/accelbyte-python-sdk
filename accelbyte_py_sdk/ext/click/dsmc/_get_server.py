import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_server as get_server_internal
from ....api.dsmc.models import ModelsServer
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("pod_name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_server(
        pod_name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_server_internal.__doc__)
    result, error = get_server_internal(
        pod_name=pod_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetServer failed: {str(error)}")
    click.echo("GetServer success")
