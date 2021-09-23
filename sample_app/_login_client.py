import click

from accelbyte_py_sdk.api.iam import token_grant_v3


@click.command()
@click.option("--doc", type=bool)
def login_client(doc):
    if doc:
        click.echo(token_grant_v3.__doc__)
    result, error = token_grant_v3(
        grant_type="client_credentials",
    )
    if error:
        raise Exception(str(error))
    click.echo("Login success.")
