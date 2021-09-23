import click

from accelbyte_py_sdk.api.iam import admin_delete_user_role_v3

from ._utils import login_client


@click.command()
@click.argument("user_id")
@click.argument("role_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
def delete_user_role(
        user_id,
        role_id,
        namespace,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_delete_user_role_v3.__doc__)
    result, error = admin_delete_user_role_v3(
        user_id=user_id,
        role_id=role_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete user role success.")
