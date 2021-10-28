import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_code as get_code_internal
from ....api.platform.models import CodeInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("code", type=str)
@click.option("--redeemable", "redeemable", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_code(
        code: str,
        redeemable: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_code_internal.__doc__)
    result, error = get_code_internal(
        code=code,
        redeemable=redeemable,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getCode failed: {str(error)}")
    click.echo("getCode success")
