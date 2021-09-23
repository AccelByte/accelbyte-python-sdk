import click

from accelbyte_py_sdk.api.iam import admin_get_bans_type_with_namespace_v3

from ._utils import login_user


@click.command()
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_ban_types_with_namespace(
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_bans_type_with_namespace_v3.__doc__)
    result, error = admin_get_bans_type_with_namespace_v3(
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get ban types with namespace success.")
    click.echo(f"Ban Types: {', '.join([b.ban for b in result.bans])}")
