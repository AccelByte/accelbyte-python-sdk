import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import kick_group_member_public_v1 as kick_group_member_public_v1_internal
from ....api.group.models import ModelsKickGroupMemberResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def kick_group_member_public_v1(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(kick_group_member_public_v1_internal.__doc__)
    result, error = kick_group_member_public_v1_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"kickGroupMemberPublicV1 failed: {str(error)}")
    click.echo("kickGroupMemberPublicV1 success")
