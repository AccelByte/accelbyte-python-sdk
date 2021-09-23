import yaml

import click

from accelbyte_py_sdk.api.iam import admin_get_my_user_v3

from ._utils import login_user


@click.command()
@click.option("--doc", type=bool)
def get_my_admin_user(
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_my_user_v3.__doc__)
    result, error = admin_get_my_user_v3(
    )
    if error:
        raise Exception(str(error))
    click.echo("Get my admin user success.")
    click.echo(yaml.safe_dump(result.to_dict()))
