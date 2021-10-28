import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import public_get_messages as public_get_messages_internal
from ....api.dsmc.models import LogAppMessageDeclaration
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_messages(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_messages_internal.__doc__)
    result, error = public_get_messages_internal(
    )
    if error:
        raise Exception(f"publicGetMessages failed: {str(error)}")
    click.echo("publicGetMessages success")
