import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_roles_v4 as admin_get_roles_v4_internal
from ....api.iam.models import ModelListRoleV4Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--is_wildcard", "is_wildcard", type=bool)
@click.option("--admin_role", "admin_role", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_roles_v4(
        is_wildcard: Optional[bool] = None,
        admin_role: Optional[bool] = None,
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_roles_v4_internal.__doc__)
    result, error = admin_get_roles_v4_internal(
        is_wildcard=is_wildcard,
        admin_role=admin_role,
        limit=limit,
        after=after,
        before=before,
    )
    if error:
        raise Exception(f"AdminGetRolesV4 failed: {str(error)}")
    click.echo("AdminGetRolesV4 success")
