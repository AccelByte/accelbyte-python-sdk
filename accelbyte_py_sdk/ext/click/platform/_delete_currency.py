import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_currency as delete_currency_internal
from ....api.platform.models import CurrencyInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("currency_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_currency(
        currency_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_currency_internal.__doc__)
    result, error = delete_currency_internal(
        currency_code=currency_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteCurrency failed: {str(error)}")
    click.echo("deleteCurrency success")
