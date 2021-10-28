import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import list_config as list_config_internal
from ....api.dsmc.models import ModelsListConfigResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_config(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_config_internal.__doc__)
    result, error = list_config_internal(
    )
    if error:
        raise Exception(f"ListConfig failed: {str(error)}")
    click.echo("ListConfig success")
