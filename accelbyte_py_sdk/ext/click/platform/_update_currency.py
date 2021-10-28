import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_currency as update_currency_internal
from ....api.platform.models import CurrencyInfo
from ....api.platform.models import CurrencyUpdate
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("currency_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_currency(
        currency_code: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_currency_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = CurrencyUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_currency_internal(
        currency_code=currency_code,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateCurrency failed: {str(error)}")
    click.echo("updateCurrency success")
