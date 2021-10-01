import click

from accelbyte_py_sdk.api.iam import admin_update_admin_role_status_v3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("role_id")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def set_role_as_admin(
        role_id,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_admin_role_status_v3.__doc__)
    result, error = admin_update_admin_role_status_v3(
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Set role as admin success.")
