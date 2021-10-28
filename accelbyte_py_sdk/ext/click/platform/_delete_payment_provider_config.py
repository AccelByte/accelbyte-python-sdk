import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_payment_provider_config as delete_payment_provider_config_internal
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("id_", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_payment_provider_config(
        id_: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_payment_provider_config_internal.__doc__)
    result, error = delete_payment_provider_config_internal(
        id_=id_,
    )
    if error:
        raise Exception(f"deletePaymentProviderConfig failed: {str(error)}")
    click.echo("deletePaymentProviderConfig success")
