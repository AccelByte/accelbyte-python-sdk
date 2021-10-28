import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_parties_data_v1 as admin_get_parties_data_v1_internal
from ....api.lobby.models import ModelsPartyData
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.option("--limit", "limit", type=str)
@click.option("--offset", "offset", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_parties_data_v1(
        limit: Optional[str] = None,
        offset: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_parties_data_v1_internal.__doc__)
    result, error = admin_get_parties_data_v1_internal(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetPartiesDataV1 failed: {str(error)}")
    click.echo("adminGetPartiesDataV1 success")
