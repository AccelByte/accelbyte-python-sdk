import click

from accelbyte_py_sdk.api.iam import admin_get_clients_by_namespace_v3

from ._utils import login_user


@click.command()
@click.argument("limit", type=int)
@click.argument("before")
@click.argument("after")
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_clients_by_namespace(
        limit,
        before,
        after,
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(admin_get_clients_by_namespace_v3.__doc__)
    result, error = admin_get_clients_by_namespace_v3(
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get clients by namespace success.")
    clients = "\n- ".join([f'{d.client_id}: {d.client_name}' for d in result.data])
    click.echo(f"Clients: \n- {clients}")
