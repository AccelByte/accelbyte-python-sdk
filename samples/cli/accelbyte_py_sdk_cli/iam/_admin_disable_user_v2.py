# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service (6.0.1)

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
    admin_disable_user_v2 as admin_disable_user_v2_internal,
)
from accelbyte_py_sdk.api.iam.models import ModelDisableUserRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_disable_user_v2(
    body: str,
    user_id: str,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_disable_user_v2_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = ModelDisableUserRequest.create_from_dict(body_json)
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    result, error = admin_disable_user_v2_internal(
        body=body,
        user_id=user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AdminDisableUserV2 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_disable_user_v2.operation_id = "AdminDisableUserV2"
admin_disable_user_v2.is_deprecated = True
