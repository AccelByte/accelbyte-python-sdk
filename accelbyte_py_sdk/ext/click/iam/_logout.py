import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import logout as logout_internal


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def logout(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(logout_internal.__doc__)
    result, error = logout_internal(
    )
    if error:
        raise Exception(f"Logout failed: {str(error)}")
    click.echo("Logout success")
