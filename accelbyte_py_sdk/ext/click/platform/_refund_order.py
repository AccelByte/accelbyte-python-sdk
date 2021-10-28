import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import refund_order as refund_order_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import OrderInfo
from ....api.platform.models import OrderRefundCreate
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def refund_order(
        order_no: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(refund_order_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = OrderRefundCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = refund_order_internal(
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"refundOrder failed: {str(error)}")
    click.echo("refundOrder success")
