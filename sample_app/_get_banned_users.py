import yaml

import click

from accelbyte_py_sdk.api.iam import admin_get_banned_users_v3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("active_only", type=bool)
@click.argument("ban_type")
@click.argument("offset", type=int)
@click.argument("limit", type=int)
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_banned_users(
        active_only,
        ban_type,
        limit,
        offset,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
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
