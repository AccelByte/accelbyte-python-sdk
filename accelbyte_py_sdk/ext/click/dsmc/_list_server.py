import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import list_server as list_server_internal
from ....api.dsmc.models import ModelsListServerResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--region", "region", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--count", "count", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_server(
        region: Optional[str] = None,
        offset: Optional[int] = None,
        count: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_server_internal.__doc__)
    result, error = list_server_internal(
        region=region,
        offset=offset,
        count=count,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ListServer failed: {str(error)}")
    click.echo("ListServer success")
