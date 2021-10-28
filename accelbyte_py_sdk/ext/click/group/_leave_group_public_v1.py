import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import leave_group_public_v1 as leave_group_public_v1_internal
from ....api.group.models import ModelsLeaveGroupResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def leave_group_public_v1(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(leave_group_public_v1_internal.__doc__)
    result, error = leave_group_public_v1_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"leaveGroupPublicV1 failed: {str(error)}")
    click.echo("leaveGroupPublicV1 success")
