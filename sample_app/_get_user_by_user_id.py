import click

from accelbyte_py_sdk.api.iam import admin_get_user_by_user_id_v3

from ._utils import login_client


@click.command()
@click.argument("user_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_user_by_user_id(
        user_id,
        namespace,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_get_user_by_user_id_v3.__doc__)
    result, error = admin_get_user_by_user_id_v3(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get user by user id success.")
