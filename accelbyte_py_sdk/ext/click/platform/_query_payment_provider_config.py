import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_payment_provider_config as query_payment_provider_config_internal
from ....api.platform.models import PaymentProviderConfigPagingSlicedResult


@click.command()
@click.option("--region", "region", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_payment_provider_config(
        region: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_payment_provider_config_internal.__doc__)
    result, error = query_payment_provider_config_internal(
        region=region,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryPaymentProviderConfig failed: {str(error)}")
    click.echo("queryPaymentProviderConfig success")
