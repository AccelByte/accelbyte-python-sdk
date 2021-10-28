import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_party_data_v1 as admin_get_party_data_v1_internal
from ....api.lobby.models import ModelsPartyData
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("party_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_party_data_v1(
        party_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_party_data_v1_internal.__doc__)
    result, error = admin_get_party_data_v1_internal(
        party_id=party_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetPartyDataV1 failed: {str(error)}")
    click.echo("adminGetPartyDataV1 success")
