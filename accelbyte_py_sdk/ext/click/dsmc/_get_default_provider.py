import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_default_provider as get_default_provider_internal
from ....api.dsmc.models import ModelsDefaultProvider


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_default_provider(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_default_provider_internal.__doc__)
    result, error = get_default_provider_internal(
    )
    if error:
        raise Exception(f"GetDefaultProvider failed: {str(error)}")
    click.echo("GetDefaultProvider success")
