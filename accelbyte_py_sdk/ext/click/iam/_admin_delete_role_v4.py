import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_delete_role_v4 as admin_delete_role_v4_internal
from ....api.iam.models import RestapiErrorResponse


@click.command()
@click.argument("role_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_delete_role_v4(
        role_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_delete_role_v4_internal.__doc__)
    result, error = admin_delete_role_v4_internal(
        role_id=role_id,
    )
    if error:
        raise Exception(f"AdminDeleteRoleV4 failed: {str(error)}")
    click.echo("AdminDeleteRoleV4 success")
