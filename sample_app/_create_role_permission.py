import json

import click

from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3

from ._utils import login_client


@click.command()
@click.argument("role_id")
@click.argument("permissions")
@click.option("--doc", type=bool)
def create_role_permission(
        role_id,
        permissions,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_add_role_permissions_v3.__doc__)
    permissions = json.loads(permissions)
    body = AccountcommonPermissionsV3.create_from_dict(permissions)
    result, error = admin_add_role_permissions_v3(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Create role permission success.")
