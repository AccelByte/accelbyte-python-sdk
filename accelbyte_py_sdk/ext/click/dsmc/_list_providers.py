import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import list_providers as list_providers_internal


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_providers(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_providers_internal.__doc__)
    result, error = list_providers_internal(
    )
    if error:
        raise Exception(f"ListProviders failed: {str(error)}")
    click.echo("ListProviders success")
