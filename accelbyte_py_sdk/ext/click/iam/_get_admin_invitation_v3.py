import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_admin_invitation_v3 as get_admin_invitation_v3_internal
from ....api.iam.models import ModelAdminInvitationV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("invitation_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_admin_invitation_v3(
        invitation_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_admin_invitation_v3_internal.__doc__)
    result, error = get_admin_invitation_v3_internal(
        invitation_id=invitation_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetAdminInvitationV3 failed: {str(error)}")
    click.echo("GetAdminInvitationV3 success")
