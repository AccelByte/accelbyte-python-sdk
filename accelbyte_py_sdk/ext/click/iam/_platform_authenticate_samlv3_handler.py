import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import platform_authenticate_samlv3_handler as platform_authenticate_samlv3_handler_internal


@click.command()
@click.argument("platform_id", type=str)
@click.argument("state", type=str)
@click.option("--code", "code", type=str)
@click.option("--error", "error", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def platform_authenticate_samlv3_handler(
        platform_id: str,
        state: str,
        code: Optional[str] = None,
        error: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(platform_authenticate_samlv3_handler_internal.__doc__)
    result, error = platform_authenticate_samlv3_handler_internal(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
    )
    if error:
        raise Exception(f"platformAuthenticateSAMLV3Handler failed: {str(error)}")
    click.echo("platformAuthenticateSAMLV3Handler success")
