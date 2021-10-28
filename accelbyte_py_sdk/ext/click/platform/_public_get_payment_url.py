import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_payment_url as public_get_payment_url_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentUrl
from ....api.platform.models import PaymentUrlCreate


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_payment_url(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_payment_url_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PaymentUrlCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_get_payment_url_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetPaymentUrl failed: {str(error)}")
    click.echo("publicGetPaymentUrl success")
