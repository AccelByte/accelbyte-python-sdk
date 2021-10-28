import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_payment_order_charge_status as get_payment_order_charge_status_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentOrderChargeStatus


@click.command()
@click.argument("payment_order_no", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_payment_order_charge_status(
        payment_order_no: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_payment_order_charge_status_internal.__doc__)
    result, error = get_payment_order_charge_status_internal(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPaymentOrderChargeStatus failed: {str(error)}")
    click.echo("getPaymentOrderChargeStatus success")
