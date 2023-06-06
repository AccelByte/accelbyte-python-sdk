# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Gdpr Service (2.0.1)

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
from accelbyte_py_sdk.api.gdpr import (
    admin_get_list_deletion_data_request as admin_get_list_deletion_data_request_internal,
)
from accelbyte_py_sdk.api.gdpr.models import ModelsListDeletionDataResponse
from accelbyte_py_sdk.api.gdpr.models import ResponseError


@click.command()
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--request_date", "request_date", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_get_list_deletion_data_request(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    request_date: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_list_deletion_data_request_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = admin_get_list_deletion_data_request_internal(
        after=after,
        before=before,
        limit=limit,
        offset=offset,
        request_date=request_date,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AdminGetListDeletionDataRequest failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_get_list_deletion_data_request.operation_id = "AdminGetListDeletionDataRequest"
admin_get_list_deletion_data_request.is_deprecated = False
