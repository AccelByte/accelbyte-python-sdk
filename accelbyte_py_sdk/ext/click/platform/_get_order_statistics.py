import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_order_statistics as get_order_statistics_internal
from ....api.platform.models import OrderStatistics


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_order_statistics(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_order_statistics_internal.__doc__)
    result, error = get_order_statistics_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getOrderStatistics failed: {str(error)}")
    click.echo("getOrderStatistics success")
