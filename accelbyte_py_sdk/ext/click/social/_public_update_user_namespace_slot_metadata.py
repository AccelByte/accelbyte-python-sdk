import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import public_update_user_namespace_slot_metadata as public_update_user_namespace_slot_metadata_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import SlotInfo
from ....api.social.models import SlotMetadataUpdate


@click.command()
@click.argument("user_id", type=str)
@click.argument("slot_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_update_user_namespace_slot_metadata(
        user_id: str,
        slot_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_update_user_namespace_slot_metadata_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = SlotMetadataUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_update_user_namespace_slot_metadata_internal(
        user_id=user_id,
        slot_id=slot_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicUpdateUserNamespaceSlotMetadata failed: {str(error)}")
    click.echo("publicUpdateUserNamespaceSlotMetadata success")
