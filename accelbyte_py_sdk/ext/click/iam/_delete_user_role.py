import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import delete_user_role as delete_user_role_internal


@click.command()
@click.argument("user_id", type=str)
@click.argument("role_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_user_role(
        user_id: str,
        role_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_user_role_internal.__doc__)
    result, error = delete_user_role_internal(
        user_id=user_id,
        role_id=role_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteUserRole failed: {str(error)}")
    click.echo("DeleteUserRole success")
