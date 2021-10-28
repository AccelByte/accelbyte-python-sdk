import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_qr_code as public_get_qr_code_internal


@click.command()
@click.argument("code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_qr_code(
        code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_qr_code_internal.__doc__)
    result, error = public_get_qr_code_internal(
        code=code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetQRCode failed: {str(error)}")
    click.echo("publicGetQRCode success")
