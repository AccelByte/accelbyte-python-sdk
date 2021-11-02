# justice-group-service (2.8.0)

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
from ....api.group import reject_group_join_request_public_v1 as reject_group_join_request_public_v1_internal
from ....api.group.models import ModelsMemberRequestGroupResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def reject_group_join_request_public_v1(
        user_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(reject_group_join_request_public_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = reject_group_join_request_public_v1_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"rejectGroupJoinRequestPublicV1 failed: {str(error)}")
    click.echo("rejectGroupJoinRequestPublicV1 success")