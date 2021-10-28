import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_wallet as get_wallet_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import WalletInfo


@click.command()
@click.argument("wallet_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_wallet(
        wallet_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_wallet_internal.__doc__)
    result, error = get_wallet_internal(
        wallet_id=wallet_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getWallet failed: {str(error)}")
    click.echo("getWallet success")
