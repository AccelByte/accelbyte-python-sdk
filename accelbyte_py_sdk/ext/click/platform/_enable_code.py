import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import enable_code as enable_code_internal
from ....api.platform.models import CodeInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def enable_code(
        code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(enable_code_internal.__doc__)
    result, error = enable_code_internal(
        code=code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"enableCode failed: {str(error)}")
    click.echo("enableCode success")
