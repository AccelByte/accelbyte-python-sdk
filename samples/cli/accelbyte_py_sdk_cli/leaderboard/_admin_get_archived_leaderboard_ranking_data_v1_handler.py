# justice-leaderboard-service (2.11.2)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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
from accelbyte_py_sdk.api.leaderboard import admin_get_archived_leaderboard_ranking_data_v1_handler as admin_get_archived_leaderboard_ranking_data_v1_handler_internal
from accelbyte_py_sdk.api.leaderboard.models import ModelsArchiveLeaderboardSignedURLResponse
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse


@click.command()
@click.argument("leaderboard_codes", type=str)
@click.option("--slug", "slug", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_get_archived_leaderboard_ranking_data_v1_handler(
        leaderboard_codes: str,
        slug: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_archived_leaderboard_ranking_data_v1_handler_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_get_archived_leaderboard_ranking_data_v1_handler_internal(
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetArchivedLeaderboardRankingDataV1Handler failed: {str(error)}")
    click.echo("AdminGetArchivedLeaderboardRankingDataV1Handler success")
