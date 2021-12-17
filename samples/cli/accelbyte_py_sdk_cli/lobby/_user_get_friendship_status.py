# justice-lobby-server (staging)

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
from ....api.lobby import user_get_friendship_status as user_get_friendship_status_internal
from ....api.lobby.models import ModelUserGetFriendshipStatusResponse
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("friend_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def user_get_friendship_status(
        friend_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(user_get_friendship_status_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = user_get_friendship_status_internal(
        friend_id=friend_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"userGetFriendshipStatus failed: {str(error)}")
    click.echo("userGetFriendshipStatus success")
