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
from ....api.iam import enable_user_ban as enable_user_ban_internal
from ....api.iam.models import ModelUserBanResponse


@click.command()
@click.argument("user_id", type=str)
@click.argument("ban_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def enable_user_ban(
        user_id: str,
        ban_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(enable_user_ban_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = enable_user_ban_internal(
        user_id=user_id,
        ban_id=ban_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"EnableUserBan failed: {str(error)}")
    click.echo("EnableUserBan success")