import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_role_members_v3 as admin_get_role_members_v3_internal
from ....api.iam.models import ModelRoleMembersResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("role_id", type=str)
@click.option("--limit", type=int)
@click.option("--after", type=str)
@click.option("--before", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_role_members_v3(
        role_id: str,
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_role_members_v3_internal.__doc__)
    result, error = admin_get_role_members_v3_internal(
        role_id=role_id,
        limit=limit,
        after=after,
        before=before,
    )
    if error:
        raise Exception(f"AdminGetRoleMembersV3 failed: {str(error)}")
    click.echo("AdminGetRoleMembersV3 success")
