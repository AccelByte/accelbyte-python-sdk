import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_delete_role_permissions_v3 as admin_delete_role_permissions_v3_internal


@click.command()
@click.argument("body", type=str)
@click.argument("role_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_delete_role_permissions_v3(
        body: str,
        role_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_delete_role_permissions_v3_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [str.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_delete_role_permissions_v3_internal(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(f"AdminDeleteRolePermissionsV3 failed: {str(error)}")
    click.echo("AdminDeleteRolePermissionsV3 success")
