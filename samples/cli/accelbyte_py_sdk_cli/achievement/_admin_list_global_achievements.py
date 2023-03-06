# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Achievement Service (2.15.0)

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
from accelbyte_py_sdk.api.achievement import (
    admin_list_global_achievements as admin_list_global_achievements_internal,
)
from accelbyte_py_sdk.api.achievement.models import (
    ModelsPaginatedGlobalAchievementResponse,
)
from accelbyte_py_sdk.api.achievement.models import ResponseError


@click.command()
@click.option("--achievement_codes", "achievement_codes", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--status", "status", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_list_global_achievements(
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_list_global_achievements_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if tags is not None:
        try:
            tags_json = json.loads(tags)
            tags = [str(i0) for i0 in tags_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'tags'. {str(e)}") from e
    result, error = admin_list_global_achievements_internal(
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AdminListGlobalAchievements failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_list_global_achievements.operation_id = "AdminListGlobalAchievements"
admin_list_global_achievements.is_deprecated = False
