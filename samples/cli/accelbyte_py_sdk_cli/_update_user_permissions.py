import json

import click

from accelbyte_py_sdk.api.iam import admin_update_user_permission_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissions

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.argument("permissions")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user_permissions(
        user_id,
        permissions,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_user_permission_v3.__doc__)
    permissions = json.loads(permissions)
    body = AccountcommonPermissions.create_from_dict(permissions)
    result, error = admin_update_user_permission_v3(
        body=body,
        user_id=user_id,
        namespace=namespace
    )
    if error:
        raise Exception(str(error))
    click.echo("Update user permissions success.")
