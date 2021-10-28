import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_payment_customization as get_payment_customization_internal
from ....api.platform.models import Customization


@click.command()
@click.argument("payment_provider", type=str)
@click.argument("region", type=str)
@click.option("--sandbox", "sandbox", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_payment_customization(
        payment_provider: str,
        region: str,
        sandbox: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_payment_customization_internal.__doc__)
    result, error = get_payment_customization_internal(
        payment_provider=payment_provider,
        region=region,
        sandbox=sandbox,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPaymentCustomization failed: {str(error)}")
    click.echo("getPaymentCustomization success")
