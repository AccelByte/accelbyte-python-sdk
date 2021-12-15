# justice-achievement-service ()

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
from ....api.achievement import public_get_achievement as public_get_achievement_internal
from ....api.achievement.models import ModelsPublicAchievementResponse
from ....api.achievement.models import ResponseError


@click.command()
@click.argument("achievement_code", type=str)
@click.argument("language", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_get_achievement(
        achievement_code: str,
        language: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_get_achievement_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_get_achievement_internal(
        achievement_code=achievement_code,
        language=language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicGetAchievement failed: {str(error)}")
    click.echo("PublicGetAchievement success")
