import json

import click

from accelbyte_py_sdk.api.iam import admin_create_role_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleCreateV3Request

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("role_create_request")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_role(
        role_create_request,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_create_role_v3.__doc__)
    role_create_request = json.loads(role_create_request)
    body = ModelRoleCreateV3Request.create_from_dict(role_create_request)
    result, error = admin_create_role_v3(
        body=body,
    )
    if error:
        raise Exception(str(error))
    click.echo("Create role success.")
