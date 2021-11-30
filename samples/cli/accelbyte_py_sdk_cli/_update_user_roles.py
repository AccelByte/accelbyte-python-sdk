import json

import click

from accelbyte_py_sdk.api.iam import admin_save_user_role_v3
from accelbyte_py_sdk.api.iam.models import ModelNamespaceRoleRequest

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.argument("role_update_requests")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user_roles(
        user_id,
        role_update_requests,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_save_user_role_v3.__doc__)
    role_update_requests = json.loads(role_update_requests)
    body = [ModelNamespaceRoleRequest.create_from_dict(r) for r in role_update_requests]
    result, error = admin_save_user_role_v3(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Update user roles success.")
