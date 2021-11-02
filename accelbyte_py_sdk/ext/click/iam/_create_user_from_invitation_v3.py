# justice-iam-service (4.4.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import create_user_from_invitation_v3 as create_user_from_invitation_v3_internal
from ....api.iam.models import ModelUserCreateFromInvitationRequestV3
from ....api.iam.models import ModelUserCreateResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("invitation_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def create_user_from_invitation_v3(
        body: str,
        invitation_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(create_user_from_invitation_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = ModelUserCreateFromInvitationRequestV3.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = create_user_from_invitation_v3_internal(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateUserFromInvitationV3 failed: {str(error)}")
    click.echo("CreateUserFromInvitationV3 success")