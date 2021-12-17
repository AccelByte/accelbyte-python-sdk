# justice-leaderboard-service (2.11.0)

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
from accelbyte_py_sdk.api.leaderboard import get_current_month_leaderboard_ranking_public_v1 as get_current_month_leaderboard_ranking_public_v1_internal
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardRankingResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse


@click.command()
@click.argument("leaderboard_code", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_current_month_leaderboard_ranking_public_v1(
        leaderboard_code: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_current_month_leaderboard_ranking_public_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_current_month_leaderboard_ranking_public_v1_internal(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetCurrentMonthLeaderboardRankingPublicV1 failed: {str(error)}")
    click.echo("GetCurrentMonthLeaderboardRankingPublicV1 success")
