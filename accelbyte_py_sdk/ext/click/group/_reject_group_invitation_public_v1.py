import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import reject_group_invitation_public_v1 as reject_group_invitation_public_v1_internal
from ....api.group.models import ModelsMemberRequestGroupResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("group_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def reject_group_invitation_public_v1(
        group_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(reject_group_invitation_public_v1_internal.__doc__)
    result, error = reject_group_invitation_public_v1_internal(
        group_id=group_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"rejectGroupInvitationPublicV1 failed: {str(error)}")
    click.echo("rejectGroupInvitationPublicV1 success")
