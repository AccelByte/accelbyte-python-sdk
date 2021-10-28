import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import charge_payment_order as charge_payment_order_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentOrderChargeRequest
from ....api.platform.models import PaymentOrderInfo


@click.command()
@click.argument("payment_order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def charge_payment_order(
        payment_order_no: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(charge_payment_order_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PaymentOrderChargeRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = charge_payment_order_internal(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"chargePaymentOrder failed: {str(error)}")
    click.echo("chargePaymentOrder success")
