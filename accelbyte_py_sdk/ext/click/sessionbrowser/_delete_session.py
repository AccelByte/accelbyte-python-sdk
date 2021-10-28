import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import delete_session as delete_session_internal
from ....api.sessionbrowser.models import ModelsSessionResponse
from ....api.sessionbrowser.models import ResponseError


@click.command()
@click.argument("session_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_session(
        session_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_session_internal.__doc__)
    result, error = delete_session_internal(
        session_id=session_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteSession failed: {str(error)}")
    click.echo("DeleteSession success")
