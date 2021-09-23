import yaml

import click

from accelbyte_py_sdk.api.iam import admin_get_role_v3

from ._utils import login_user


@click.command()
@click.argument("role_id")
@click.option("--doc", type=bool)
def get_role_by_id(
        role_id,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_role_v3.__doc__)
    result, error = admin_get_role_v3(
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get role by id success.")
    click.echo(yaml.safe_dump(result.to_dict()))
