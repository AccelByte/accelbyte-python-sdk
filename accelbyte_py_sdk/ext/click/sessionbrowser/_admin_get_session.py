import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import admin_get_session as admin_get_session_internal
from ....api.sessionbrowser.models import ModelsAdminSessionResponse
from ....api.sessionbrowser.models import RestapiErrorResponseV2


@click.command()
@click.argument("session_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_session(
        session_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_session_internal.__doc__)
    result, error = admin_get_session_internal(
        session_id=session_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetSession failed: {str(error)}")
    click.echo("AdminGetSession success")
