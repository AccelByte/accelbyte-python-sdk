import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_apple_iap_config as get_apple_iap_config_internal
from ....api.platform.models import AppleIAPConfigInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_apple_iap_config(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_apple_iap_config_internal.__doc__)
    result, error = get_apple_iap_config_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getAppleIAPConfig failed: {str(error)}")
    click.echo("getAppleIAPConfig success")
