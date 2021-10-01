import click

from accelbyte_py_sdk.api.iam import admin_get_user_by_user_id_v3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_by_user_id(
        user_id,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_user_by_user_id_v3.__doc__)
    result, error = admin_get_user_by_user_id_v3(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get user by user id success.")
