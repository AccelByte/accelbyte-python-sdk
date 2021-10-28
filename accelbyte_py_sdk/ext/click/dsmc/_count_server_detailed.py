import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import count_server_detailed as count_server_detailed_internal
from ....api.dsmc.models import ModelsDetailedCountServerResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--region", "region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def count_server_detailed(
        region: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(count_server_detailed_internal.__doc__)
    result, error = count_server_detailed_internal(
        region=region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CountServerDetailed failed: {str(error)}")
    click.echo("CountServerDetailed success")
