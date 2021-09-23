import yaml

import click

from accelbyte_py_sdk.api.iam import public_get_my_user_v3

from ._utils import login_user


@click.command()
@click.option("--doc", type=bool)
def get_my_public_user(
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(public_get_my_user_v3.__doc__)
    result, error = public_get_my_user_v3(
    )
    if error:
        raise Exception(str(error))
    click.echo("Get my public user success.")
    click.echo(f"{result.user_id}: {result.user_name}")
    click.echo(yaml.safe_dump(result.to_dict()))
