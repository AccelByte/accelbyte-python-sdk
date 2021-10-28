import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_profanity_lists as admin_get_profanity_lists_internal
from ....api.lobby.models import ModelsAdminGetProfanityListsListResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_profanity_lists(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_profanity_lists_internal.__doc__)
    result, error = admin_get_profanity_lists_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetProfanityLists failed: {str(error)}")
    click.echo("adminGetProfanityLists success")
