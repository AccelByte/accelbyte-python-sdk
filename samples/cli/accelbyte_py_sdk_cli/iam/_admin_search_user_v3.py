# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service

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
from accelbyte_py_sdk.api.iam import (
    admin_search_user_v3 as admin_search_user_v3_internal,
)
from accelbyte_py_sdk.api.iam.models import ModelSearchUsersResponseWithPaginationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.option("--by", "by", type=str)
@click.option("--end_date", "end_date", type=str)
@click.option("--include_total", "include_total", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--platform_by", "platform_by", type=str)
@click.option("--platform_id", "platform_id", type=str)
@click.option("--query", "query", type=str)
@click.option("--role_ids", "role_ids", type=str)
@click.option("--selected_fields", "selected_fields", type=str)
@click.option("--skip_login_queue", "skip_login_queue", type=bool)
@click.option("--start_date", "start_date", type=str)
@click.option("--tag_ids", "tag_ids", type=str)
@click.option("--test_account", "test_account", type=bool)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_search_user_v3(
    by: Optional[str] = None,
    end_date: Optional[str] = None,
    include_total: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_by: Optional[str] = None,
    platform_id: Optional[str] = None,
    query: Optional[str] = None,
    role_ids: Optional[str] = None,
    selected_fields: Optional[str] = None,
    skip_login_queue: Optional[bool] = None,
    start_date: Optional[str] = None,
    tag_ids: Optional[str] = None,
    test_account: Optional[bool] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_search_user_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = admin_search_user_v3_internal(
        by=by,
        end_date=end_date,
        include_total=include_total,
        limit=limit,
        offset=offset,
        platform_by=platform_by,
        platform_id=platform_id,
        query=query,
        role_ids=role_ids,
        selected_fields=selected_fields,
        skip_login_queue=skip_login_queue,
        start_date=start_date,
        tag_ids=tag_ids,
        test_account=test_account,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AdminSearchUserV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_search_user_v3.operation_id = "AdminSearchUserV3"
admin_search_user_v3.is_deprecated = False
