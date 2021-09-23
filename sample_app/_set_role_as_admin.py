import click

from accelbyte_py_sdk.api.iam import admin_update_admin_role_status_v3

from ._utils import login_user


@click.command()
@click.argument("role_id")
@click.option("--doc", type=bool)
def set_role_as_admin(
        role_id,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_update_admin_role_status_v3.__doc__)
    result, error = admin_update_admin_role_status_v3(
        role_id=role_id,
    )
    if error:
        raise Exception(str(error))
    click.echo("Set role as admin success.")
