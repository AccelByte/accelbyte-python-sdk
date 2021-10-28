import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import download_user_order_receipt as download_user_order_receipt_internal
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("order_no", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def download_user_order_receipt(
        user_id: str,
        order_no: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(download_user_order_receipt_internal.__doc__)
    result, error = download_user_order_receipt_internal(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    if error:
        raise Exception(f"downloadUserOrderReceipt failed: {str(error)}")
    click.echo("downloadUserOrderReceipt success")
