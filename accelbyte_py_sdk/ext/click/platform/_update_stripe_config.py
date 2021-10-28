import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_stripe_config as update_stripe_config_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentMerchantConfigInfo
from ....api.platform.models import StripeConfig


@click.command()
@click.argument("id_", type=str)
@click.option("--body", "body", type=str)
@click.option("--validate", "validate", type=bool)
@click.option("--sandbox", "sandbox", type=bool)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_stripe_config(
        id_: str,
        body: Optional[str] = None,
        validate: Optional[bool] = None,
        sandbox: Optional[bool] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_stripe_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StripeConfig.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_stripe_config_internal(
        id_=id_,
        body=body,
        validate=validate,
        sandbox=sandbox,
    )
    if error:
        raise Exception(f"updateStripeConfig failed: {str(error)}")
    click.echo("updateStripeConfig success")
