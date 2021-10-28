import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import clear_cache as clear_cache_internal
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def clear_cache(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(clear_cache_internal.__doc__)
    result, error = clear_cache_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"ClearCache failed: {str(error)}")
    click.echo("ClearCache success")
