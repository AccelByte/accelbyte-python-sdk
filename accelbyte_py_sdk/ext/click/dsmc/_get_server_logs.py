import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_server_logs as get_server_logs_internal
from ....api.dsmc.models import ModelsServerLogs
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("pod_name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_server_logs(
        pod_name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_server_logs_internal.__doc__)
    result, error = get_server_logs_internal(
        pod_name=pod_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getServerLogs failed: {str(error)}")
    click.echo("getServerLogs success")
