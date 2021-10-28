import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import create_user_from_invitation_v4 as create_user_from_invitation_v4_internal
from ....api.iam.models import AccountCreateUserResponseV4
from ....api.iam.models import ModelUserCreateFromInvitationRequestV4
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("invitation_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_user_from_invitation_v4(
        body: str,
        invitation_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_user_from_invitation_v4_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUserCreateFromInvitationRequestV4.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_user_from_invitation_v4_internal(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateUserFromInvitationV4 failed: {str(error)}")
    click.echo("CreateUserFromInvitationV4 success")
