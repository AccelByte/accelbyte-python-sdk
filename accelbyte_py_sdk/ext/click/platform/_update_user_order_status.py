import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_user_order_status as update_user_order_status_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import OrderInfo
from ....api.platform.models import OrderUpdate
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user_order_status(
        user_id: str,
        order_no: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_user_order_status_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = OrderUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_user_order_status_internal(
        user_id=user_id,
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateUserOrderStatus failed: {str(error)}")
    click.echo("updateUserOrderStatus success")
