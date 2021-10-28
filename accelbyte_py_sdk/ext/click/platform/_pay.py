import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import pay as pay_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentProcessResult
from ....api.platform.models import PaymentToken


@click.command()
@click.argument("payment_order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--payment_provider", "payment_provider", type=str)
@click.option("--zip_code", "zip_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def pay(
        payment_order_no: str,
        body: Optional[str] = None,
        payment_provider: Optional[str] = None,
        zip_code: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(pay_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PaymentToken.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = pay_internal(
        payment_order_no=payment_order_no,
        body=body,
        payment_provider=payment_provider,
        zip_code=zip_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"pay failed: {str(error)}")
    click.echo("pay success")
