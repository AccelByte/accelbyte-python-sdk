import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_admin_users_by_role_id as get_admin_users_by_role_id_internal
from ....api.iam.models import ModelGetAdminUsersResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--role_id", type=str)
@click.option("--limit", type=int)
@click.option("--after", type=int)
@click.option("--before", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_admin_users_by_role_id(
        role_id: Optional[str] = None,
        limit: Optional[int] = None,
        after: Optional[int] = None,
        before: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_admin_users_by_role_id_internal.__doc__)
    result, error = get_admin_users_by_role_id_internal(
        role_id=role_id,
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetAdminUsersByRoleID failed: {str(error)}")
    click.echo("GetAdminUsersByRoleID success")
