import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import get_total_active_session as get_total_active_session_internal
from ....api.sessionbrowser.models import ModelsCountActiveSessionResponse
from ....api.sessionbrowser.models import RestapiErrorResponseV2


@click.command()
@click.option("--session_type", "session_type", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_total_active_session(
        session_type: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_total_active_session_internal.__doc__)
    result, error = get_total_active_session_internal(
        session_type=session_type,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetTotalActiveSession failed: {str(error)}")
    click.echo("GetTotalActiveSession success")
