# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Social Service (2.9.0)

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
from accelbyte_py_sdk.api.social import (
    public_bulk_inc_user_stat_item_value as public_bulk_inc_user_stat_item_value_internal,
)
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemInc
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_bulk_inc_user_stat_item_value(
    body: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_bulk_inc_user_stat_item_value_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = [BulkUserStatItemInc.create_from_dict(i0) for i0 in body_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    result, error = public_bulk_inc_user_stat_item_value_internal(
        body=body,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicBulkIncUserStatItemValue failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_bulk_inc_user_stat_item_value.operation_id = "publicBulkIncUserStatItemValue"
public_bulk_inc_user_stat_item_value.is_deprecated = False
