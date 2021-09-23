import click

from accelbyte_py_sdk.api.iam import admin_delete_client_permission_v3

from ._utils import login_client


@click.command()
@click.argument("client_id")
@click.argument("action")
@click.argument("resource")
@click.option("--namespace")
@click.option("--doc", type=bool)
def delete_client_permission(
        client_id,
        action,
        resource,
        namespace,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_delete_client_permission_v3.__doc__)
    result, error = admin_delete_client_permission_v3(
        client_id=client_id,
        resource=resource,
        action=action,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete client permission success.")
