import json

import click

from accelbyte_py_sdk.api.iam import admin_remove_role_managers_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequestV3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("role_id")
@click.argument("managers")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_role_managers(
        role_id,
        managers,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_remove_role_managers_v3.__doc__)
    managers = json.loads(managers)
    body = ModelRoleManagersRequestV3.create_from_dict(managers)
    result, error = admin_remove_role_managers_v3(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete role managers success.")
