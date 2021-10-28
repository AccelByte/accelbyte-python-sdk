import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import debug_matched_payment_provider_config as debug_matched_payment_provider_config_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentProviderConfigInfo


@click.command()
@click.option("--region", "region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def debug_matched_payment_provider_config(
        region: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(debug_matched_payment_provider_config_internal.__doc__)
    result, error = debug_matched_payment_provider_config_internal(
        region=region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"debugMatchedPaymentProviderConfig failed: {str(error)}")
    click.echo("debugMatchedPaymentProviderConfig success")
