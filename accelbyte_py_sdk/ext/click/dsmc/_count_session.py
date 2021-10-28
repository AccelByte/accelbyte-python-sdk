import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import count_session as count_session_internal
from ....api.dsmc.models import ModelsCountSessionResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--region", "region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def count_session(
        region: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(count_session_internal.__doc__)
    result, error = count_session_internal(
        region=region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CountSession failed: {str(error)}")
    click.echo("CountSession success")
