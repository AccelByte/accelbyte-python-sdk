import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import simulate_payment_order_notification as simulate_payment_order_notification_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import NotificationProcessResult
from ....api.platform.models import PaymentOrderNotifySimulation


@click.command()
@click.argument("payment_order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def simulate_payment_order_notification(
        payment_order_no: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(simulate_payment_order_notification_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PaymentOrderNotifySimulation.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = simulate_payment_order_notification_internal(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"simulatePaymentOrderNotification failed: {str(error)}")
    click.echo("simulatePaymentOrderNotification success")
