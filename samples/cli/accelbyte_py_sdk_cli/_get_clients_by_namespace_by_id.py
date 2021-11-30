import click

from accelbyte_py_sdk.api.iam import admin_get_clientsby_namespaceby_idv3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("client_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_clients_by_namespace_by_id(
        client_id,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_clientsby_namespaceby_idv3.__doc__)
    result, error = admin_get_clientsby_namespaceby_idv3(
        client_id=client_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get clients by namespace by id success.")
    click.echo(f"Client: {result.client_name}")
