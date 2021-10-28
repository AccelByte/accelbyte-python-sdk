import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_add_profanity_filter_into_list as admin_add_profanity_filter_into_list_internal
from ....api.lobby.models import ModelsAdminAddProfanityFilterIntoListRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("list_", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_add_profanity_filter_into_list(
        body: str,
        list_: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_add_profanity_filter_into_list_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsAdminAddProfanityFilterIntoListRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_add_profanity_filter_into_list_internal(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminAddProfanityFilterIntoList failed: {str(error)}")
    click.echo("adminAddProfanityFilterIntoList success")
