import click

from accelbyte_py_sdk.api.iam import admin_delete_role_permission_v3

from ._utils import login_client


@click.command()
@click.argument("role_id")
@click.argument("resource")
@click.argument("action")
@click.option("--doc", type=bool)
def delete_role_permission(
        role_id,
        resource,
        action,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_delete_role_permission_v3.__doc__)
    result, error = admin_delete_role_permission_v3(
        role_id=role_id,
        resource=resource,
        action=action
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete role permission success.")
