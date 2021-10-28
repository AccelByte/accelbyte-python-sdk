import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_currency_summary as get_currency_summary_internal
from ....api.platform.models import CurrencySummary
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("currency_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_currency_summary(
        currency_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_currency_summary_internal.__doc__)
    result, error = get_currency_summary_internal(
        currency_code=currency_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getCurrencySummary failed: {str(error)}")
    click.echo("getCurrencySummary success")
