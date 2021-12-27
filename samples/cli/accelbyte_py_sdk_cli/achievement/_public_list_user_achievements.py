# justice-achievement-service ()

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from accelbyte_py_sdk.api.achievement import public_list_user_achievements as public_list_user_achievements_internal
from accelbyte_py_sdk.api.achievement.models import ModelsPaginatedUserAchievementResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError


@click.command()
@click.argument("user_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--prefer_unlocked", "prefer_unlocked", type=bool)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_list_user_achievements(
        user_id: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        prefer_unlocked: Optional[bool] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_list_user_achievements_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_list_user_achievements_internal(
        user_id=user_id,
        limit=limit,
        offset=offset,
        prefer_unlocked=prefer_unlocked,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicListUserAchievements failed: {str(error)}")
    click.echo("PublicListUserAchievements success")