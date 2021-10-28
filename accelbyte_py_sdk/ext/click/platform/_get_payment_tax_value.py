import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_payment_tax_value as get_payment_tax_value_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import TaxResult


@click.command()
@click.argument("payment_provider", type=str)
@click.argument("payment_order_no", type=str)
@click.option("--zip_code", "zip_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_payment_tax_value(
        payment_provider: str,
        payment_order_no: str,
        zip_code: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_payment_tax_value_internal.__doc__)
    result, error = get_payment_tax_value_internal(
        payment_provider=payment_provider,
        payment_order_no=payment_order_no,
        zip_code=zip_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPaymentTaxValue failed: {str(error)}")
    click.echo("getPaymentTaxValue success")
