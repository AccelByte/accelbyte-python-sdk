import click

from accelbyte_py_sdk.services.auth import logout as acb_logout

from ._utils import login_as as login_as_internal


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def logout(
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(acb_logout.__doc__)
    result, error = acb_logout()
    if error:
        raise Exception(str(error))
    click.echo("Logout success.")
