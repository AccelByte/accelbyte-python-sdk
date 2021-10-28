import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_payment_tax_config as get_payment_tax_config_internal
from ....api.platform.models import PaymentTaxConfigInfo


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_payment_tax_config(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_payment_tax_config_internal.__doc__)
    result, error = get_payment_tax_config_internal(
    )
    if error:
        raise Exception(f"getPaymentTaxConfig failed: {str(error)}")
    click.echo("getPaymentTaxConfig success")
