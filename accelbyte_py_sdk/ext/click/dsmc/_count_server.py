import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import count_server as count_server_internal
from ....api.dsmc.models import ModelsCountServerResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def count_server(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(count_server_internal.__doc__)
    result, error = count_server_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"CountServer failed: {str(error)}")
    click.echo("CountServer success")
