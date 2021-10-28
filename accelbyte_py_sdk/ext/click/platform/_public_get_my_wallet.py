import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_my_wallet as public_get_my_wallet_internal
from ....api.platform.models import WalletInfo


@click.command()
@click.argument("currency_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_my_wallet(
        currency_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_my_wallet_internal.__doc__)
    result, error = public_get_my_wallet_internal(
        currency_code=currency_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetMyWallet failed: {str(error)}")
    click.echo("publicGetMyWallet success")
