import click

from accelbyte_py_sdk.api.iam import admin_delete_user_permission_v3

from ._utils import login_client


@click.command()
@click.argument("user_id")
@click.argument("action")
@click.argument("resource")
@click.option("--namespace")
@click.option("--doc", type=bool)
def delete_user_permission(
        user_id,
        action,
        resource,
        namespace,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_delete_user_permission_v3.__doc__)
    result, error = admin_delete_user_permission_v3(
        user_id=user_id,
        resource=resource,
        action=action,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete user permission success.")
