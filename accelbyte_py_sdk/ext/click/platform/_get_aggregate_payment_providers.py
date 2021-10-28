import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_aggregate_payment_providers as get_aggregate_payment_providers_internal


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_aggregate_payment_providers(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_aggregate_payment_providers_internal.__doc__)
    result, error = get_aggregate_payment_providers_internal(
    )
    if error:
        raise Exception(f"getAggregatePaymentProviders failed: {str(error)}")
    click.echo("getAggregatePaymentProviders success")
