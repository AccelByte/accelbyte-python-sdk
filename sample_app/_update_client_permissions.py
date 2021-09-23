import json

import click

from accelbyte_py_sdk.api.iam import admin_update_client_permission_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonClientPermissionsV3

from ._utils import login_user


@click.command()
@click.argument("client_id")
@click.argument("permissions")
@click.option("--namespace")
@click.option("--doc", type=bool)
def update_client_permissions(
        client_id,
        permissions,
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_update_client_permission_v3.__doc__)
    permissions = json.loads(permissions)
    body = AccountcommonClientPermissionsV3.create_from_dict(permissions)
    result, error = admin_update_client_permission_v3(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Update client permissions success.")
