import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_delete_client_v3 as admin_delete_client_v3_internal
from ....api.iam.models import RestapiErrorResponse


@click.command()
@click.argument("client_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_delete_client_v3(
        client_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_delete_client_v3_internal.__doc__)
    result, error = admin_delete_client_v3_internal(
        client_id=client_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminDeleteClientV3 failed: {str(error)}")
    click.echo("AdminDeleteClientV3 success")
