import json

import click

from accelbyte_py_sdk.api.iam import admin_delete_role_permissions_v3

from ._utils import login_client


@click.command()
@click.argument("role_id")
@click.argument("body")
@click.option("--doc", type=bool)
def delete_role_permissions(
        role_id,
        body,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_delete_role_permissions_v3.__doc__)
    body = json.loads(body)
    result, error = admin_delete_role_permissions_v3(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete role permissions success.")
