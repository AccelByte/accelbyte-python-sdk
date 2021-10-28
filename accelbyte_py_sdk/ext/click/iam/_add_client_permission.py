import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import add_client_permission as add_client_permission_internal


@click.command()
@click.argument("client_id", type=str)
@click.argument("resource", type=str)
@click.argument("action", type=int)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_client_permission(
        client_id: str,
        resource: str,
        action: int,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(add_client_permission_internal.__doc__)
    result, error = add_client_permission_internal(
        client_id=client_id,
        resource=resource,
        action=action,
    )
    if error:
        raise Exception(f"AddClientPermission failed: {str(error)}")
    click.echo("AddClientPermission success")
