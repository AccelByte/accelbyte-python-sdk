import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_update_role_permissions_v4 as admin_update_role_permissions_v4_internal
from ....api.iam.models import AccountcommonPermissionsV3
from ....api.iam.models import ModelRoleV4Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("role_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_update_role_permissions_v4(
        body: str,
        role_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_role_permissions_v4_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = AccountcommonPermissionsV3.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_update_role_permissions_v4_internal(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(f"AdminUpdateRolePermissionsV4 failed: {str(error)}")
    click.echo("AdminUpdateRolePermissionsV4 success")
