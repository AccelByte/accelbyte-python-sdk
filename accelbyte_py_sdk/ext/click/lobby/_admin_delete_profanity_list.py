import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_delete_profanity_list as admin_delete_profanity_list_internal
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("list_", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_delete_profanity_list(
        list_: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_delete_profanity_list_internal.__doc__)
    result, error = admin_delete_profanity_list_internal(
        list_=list_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminDeleteProfanityList failed: {str(error)}")
    click.echo("adminDeleteProfanityList success")
