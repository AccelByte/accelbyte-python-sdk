import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import refund_payment_order_by_dedicated as refund_payment_order_by_dedicated_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentOrderRefund
from ....api.platform.models import PaymentOrderRefundResult
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("payment_order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def refund_payment_order_by_dedicated(
        payment_order_no: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(refund_payment_order_by_dedicated_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PaymentOrderRefund.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = refund_payment_order_by_dedicated_internal(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"refundPaymentOrderByDedicated failed: {str(error)}")
    click.echo("refundPaymentOrderByDedicated success")
