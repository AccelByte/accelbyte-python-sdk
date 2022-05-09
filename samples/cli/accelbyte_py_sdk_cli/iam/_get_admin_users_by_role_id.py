# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# justice-iam-service (5.8.0)

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
from accelbyte_py_sdk.api.iam import get_admin_users_by_role_id as get_admin_users_by_role_id_internal
from accelbyte_py_sdk.api.iam.models import ModelGetAdminUsersResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.option("--after", "after", type=int)
@click.option("--before", "before", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--role_id", "role_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def get_admin_users_by_role_id(
        after: Optional[int] = None,
        before: Optional[int] = None,
        limit: Optional[int] = None,
        role_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_admin_users_by_role_id_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    result, error = get_admin_users_by_role_id_internal(
        after=after,
        before=before,
        limit=limit,
        role_id=role_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"GetAdminUsersByRoleID failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


get_admin_users_by_role_id.operation_id = "GetAdminUsersByRoleID"
get_admin_users_by_role_id.is_deprecated = False
