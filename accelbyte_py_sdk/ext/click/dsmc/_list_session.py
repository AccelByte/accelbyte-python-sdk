import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import list_session as list_session_internal
from ....api.dsmc.models import ModelsListSessionResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--region", "region", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--count", "count", type=int)
@click.option("--with_server", "with_server", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_session(
        region: Optional[str] = None,
        offset: Optional[int] = None,
        count: Optional[int] = None,
        with_server: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_session_internal.__doc__)
    result, error = list_session_internal(
        region=region,
        offset=offset,
        count=count,
        with_server=with_server,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ListSession failed: {str(error)}")
    click.echo("ListSession success")
