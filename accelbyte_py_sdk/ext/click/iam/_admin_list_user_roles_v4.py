import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_list_user_roles_v4 as admin_list_user_roles_v4_internal
from ....api.iam.models import ModelListUserRolesV4Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_list_user_roles_v4(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_list_user_roles_v4_internal.__doc__)
    result, error = admin_list_user_roles_v4_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminListUserRolesV4 failed: {str(error)}")
    click.echo("AdminListUserRolesV4 success")
