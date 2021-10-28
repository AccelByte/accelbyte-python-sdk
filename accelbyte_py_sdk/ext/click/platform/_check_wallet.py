import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import check_wallet as check_wallet_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("currency_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def check_wallet(
        user_id: str,
        currency_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(check_wallet_internal.__doc__)
    result, error = check_wallet_internal(
        user_id=user_id,
        currency_code=currency_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"checkWallet failed: {str(error)}")
    click.echo("checkWallet success")
