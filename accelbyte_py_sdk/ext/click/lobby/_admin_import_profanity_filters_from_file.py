import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_import_profanity_filters_from_file as admin_import_profanity_filters_from_file_internal
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("list_", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_import_profanity_filters_from_file(
        body: str,
        list_: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_import_profanity_filters_from_file_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [int.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_import_profanity_filters_from_file_internal(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminImportProfanityFiltersFromFile failed: {str(error)}")
    click.echo("adminImportProfanityFiltersFromFile success")
