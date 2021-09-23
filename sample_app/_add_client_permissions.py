import json

import click

from accelbyte_py_sdk.api.iam import admin_add_client_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonClientPermissionsV3

from ._utils import login_client


@click.command()
@click.argument("client_id")
@click.argument("permissions")
@click.option("--namespace")
@click.option("--doc", type=bool)
def add_client_permissions(
        client_id,
        permissions,
        namespace,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_add_client_permissions_v3.__doc__)
    permissions = json.loads(permissions)
    body = AccountcommonClientPermissionsV3.create_from_dict(permissions)
    result, error = admin_add_client_permissions_v3(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Add client permissions success.")
