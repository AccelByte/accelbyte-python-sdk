import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_update_party_attributes_v1 as admin_update_party_attributes_v1_internal
from ....api.lobby.models import ModelsPartyData
from ....api.lobby.models import ModelsPartyPUTCustomAttributesRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("party_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_update_party_attributes_v1(
        body: str,
        party_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_party_attributes_v1_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsPartyPUTCustomAttributesRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_update_party_attributes_v1_internal(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminUpdatePartyAttributesV1 failed: {str(error)}")
    click.echo("adminUpdatePartyAttributesV1 success")
