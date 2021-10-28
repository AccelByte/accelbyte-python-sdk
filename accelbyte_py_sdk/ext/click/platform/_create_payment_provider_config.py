import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import create_payment_provider_config as create_payment_provider_config_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentProviderConfigEdit
from ....api.platform.models import PaymentProviderConfigInfo
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_payment_provider_config(
        body: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_payment_provider_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PaymentProviderConfigEdit.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_payment_provider_config_internal(
        body=body,
    )
    if error:
        raise Exception(f"createPaymentProviderConfig failed: {str(error)}")
    click.echo("createPaymentProviderConfig success")
