import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_wallet as public_get_wallet_internal
from ....api.platform.models import WalletInfo


@click.command()
@click.argument("user_id", type=str)
@click.argument("currency_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_wallet(
        user_id: str,
        currency_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_wallet_internal.__doc__)
    result, error = public_get_wallet_internal(
        user_id=user_id,
        currency_code=currency_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetWallet failed: {str(error)}")
    click.echo("publicGetWallet success")
