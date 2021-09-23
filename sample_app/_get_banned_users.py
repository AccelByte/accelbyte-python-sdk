import yaml

import click

from accelbyte_py_sdk.api.iam import admin_get_banned_users_v3

from ._utils import login_user


@click.command()
@click.argument("active_only", type=bool)
@click.argument("ban_type")
@click.argument("offset", type=int)
@click.argument("limit", type=int)
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_banned_users(
        active_only,
        ban_type,
        limit,
        offset,
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_banned_users_v3.__doc__)
    result, error = admin_get_banned_users_v3(
        active_only=active_only,
        ban_type=ban_type,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get banned users success.")
    click.echo(yaml.safe_dump(result.to_dict()))
