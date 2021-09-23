import json

import click

from accelbyte_py_sdk.api.iam import admin_add_role_members_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersRequestV3

from ._utils import login_client


@click.command()
@click.argument("role_id")
@click.argument("members")
@click.option("--doc", type=bool)
def add_role_members(
        role_id,
        members,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_add_role_members_v3.__doc__)
    members = json.loads(members)
    body = ModelRoleMembersRequestV3.create_from_dict(members)
    result, error = admin_add_role_members_v3(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Add role members success.")
