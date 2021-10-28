import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_fulfill_apple_iap_item as public_fulfill_apple_iap_item_internal
from ....api.platform.models import AppleIAPReceipt
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_fulfill_apple_iap_item(
        user_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_fulfill_apple_iap_item_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = AppleIAPReceipt.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_fulfill_apple_iap_item_internal(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicFulfillAppleIAPItem failed: {str(error)}")
    click.echo("publicFulfillAppleIAPItem success")
