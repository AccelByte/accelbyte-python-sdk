import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_session as get_session_internal
from ....api.dsmc.models import ModelsSessionResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("session_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_session(
        session_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_session_internal.__doc__)
    result, error = get_session_internal(
        session_id=session_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetSession failed: {str(error)}")
    click.echo("GetSession success")
