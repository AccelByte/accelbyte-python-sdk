import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import delete_user_permission as delete_user_permission_internal


@click.command()
@click.argument("user_id", type=str)
@click.argument("resource", type=str)
@click.argument("action", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_user_permission(
        user_id: str,
        resource: str,
        action: int,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_user_permission_internal.__doc__)
    result, error = delete_user_permission_internal(
        user_id=user_id,
        resource=resource,
        action=action,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteUserPermission failed: {str(error)}")
    click.echo("DeleteUserPermission success")
