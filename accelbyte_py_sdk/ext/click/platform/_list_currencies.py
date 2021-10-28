import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import list_currencies as list_currencies_internal
from ....api.platform.models import CurrencyInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_currencies(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_currencies_internal.__doc__)
    result, error = list_currencies_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"listCurrencies failed: {str(error)}")
    click.echo("listCurrencies success")
