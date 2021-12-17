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
from ....api.lobby import get_personal_chat_history_v1_public as get_personal_chat_history_v1_public_internal
from ....api.lobby.models import ModelChatMessageResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("friend_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_personal_chat_history_v1_public(
        friend_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_personal_chat_history_v1_public_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_personal_chat_history_v1_public_internal(
        friend_id=friend_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPersonalChatHistoryV1Public failed: {str(error)}")
    click.echo("getPersonalChatHistoryV1Public success")
