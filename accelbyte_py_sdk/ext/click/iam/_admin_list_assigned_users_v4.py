import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_list_assigned_users_v4 as admin_list_assigned_users_v4_internal
from ....api.iam.models import ModelListAssignedUsersV4Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("role_id", type=str)
@click.option("--limit", type=int)
@click.option("--after", type=str)
@click.option("--before", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_list_assigned_users_v4(
        role_id: str,
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_list_assigned_users_v4_internal.__doc__)
    result, error = admin_list_assigned_users_v4_internal(
        role_id=role_id,
        limit=limit,
        after=after,
        before=before,
    )
    if error:
        raise Exception(f"AdminListAssignedUsersV4 failed: {str(error)}")
    click.echo("AdminListAssignedUsersV4 success")
