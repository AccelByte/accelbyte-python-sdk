import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_server_session as get_server_session_internal
from ....api.dsmc.models import ModelsServerSessionResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("pod_name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_server_session(
        pod_name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_server_session_internal.__doc__)
    result, error = get_server_session_internal(
        pod_name=pod_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetServerSession failed: {str(error)}")
    click.echo("GetServerSession success")
