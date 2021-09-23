import click

from accelbyte_py_sdk.services.auth import logout as acb_logout

from ._utils import login_client


@click.command()
@click.option("--doc", type=bool)
def logout(doc):
    login_client()
    if doc:
        click.echo(acb_logout.__doc__)
    result, error = acb_logout()
    if error:
        raise Exception(str(error))
    click.echo("Logout success.")
