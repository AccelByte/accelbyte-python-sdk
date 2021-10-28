import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_profanity_list_filters_v1 as admin_get_profanity_list_filters_v1_internal
from ....api.lobby.models import ModelsAdminGetProfanityListFiltersV1Response
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("list_", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_profanity_list_filters_v1(
        list_: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_profanity_list_filters_v1_internal.__doc__)
    result, error = admin_get_profanity_list_filters_v1_internal(
        list_=list_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetProfanityListFiltersV1 failed: {str(error)}")
    click.echo("adminGetProfanityListFiltersV1 success")
