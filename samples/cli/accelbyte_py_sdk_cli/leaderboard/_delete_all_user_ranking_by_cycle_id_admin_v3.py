# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Leaderboard Service

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
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    delete_all_user_ranking_by_cycle_id_admin_v3 as delete_all_user_ranking_by_cycle_id_admin_v3_internal,
)
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse


@click.command()
@click.argument("cycle_id", type=str)
@click.argument("leaderboard_code", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def delete_all_user_ranking_by_cycle_id_admin_v3(
    cycle_id: str,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_all_user_ranking_by_cycle_id_admin_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = delete_all_user_ranking_by_cycle_id_admin_v3_internal(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"deleteAllUserRankingByCycleIdAdminV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


delete_all_user_ranking_by_cycle_id_admin_v3.operation_id = (
    "deleteAllUserRankingByCycleIdAdminV3"
)
delete_all_user_ranking_by_cycle_id_admin_v3.is_deprecated = False
