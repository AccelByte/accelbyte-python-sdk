import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_time_zones as get_time_zones_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_time_zones(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_time_zones_internal.__doc__)
    result, error = get_time_zones_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getTimeZones failed: {str(error)}")
    click.echo("getTimeZones success")
