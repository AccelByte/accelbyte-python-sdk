import click

from accelbyte_py_sdk.api.iam import admin_get_bans_type_v3

from ._utils import login_user


@click.command()
@click.option("--doc", type=bool)
def get_ban_types(
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_bans_type_v3.__doc__)
    result, error = admin_get_bans_type_v3(
    )
    if error:
        raise Exception(str(error))
    click.echo("Get ban types success.")
    click.echo(f"Ban Types: {', '.join([b.ban for b in result.bans])}")
