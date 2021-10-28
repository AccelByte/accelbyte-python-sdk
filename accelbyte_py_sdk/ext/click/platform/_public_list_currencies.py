import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_list_currencies as public_list_currencies_internal
from ....api.platform.models import CurrencyInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_list_currencies(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_list_currencies_internal.__doc__)
    result, error = public_list_currencies_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicListCurrencies failed: {str(error)}")
    click.echo("publicListCurrencies success")
