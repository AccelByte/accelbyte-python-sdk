import click

from accelbyte_py_sdk.api.iam import admin_get_user_ban_v3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.argument("active_only", type=bool)
@click.argument("limit", type=int)
@click.argument("before")
@click.argument("after")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_bans(
        user_id,
        active_only,
        limit,
        before,
        after,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_user_ban_v3.__doc__)
    result, error = admin_get_user_ban_v3(
        user_id=user_id,
        active_only=active_only,
        limit=limit,
        before=before,
        after=after,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get user bans success.")
    click.echo(f"Bans: {', '.join([d.ban for d in result.data])}")
