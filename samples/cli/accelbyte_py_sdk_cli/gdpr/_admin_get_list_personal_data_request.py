# justice-gdpr-service (1.11.1)

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
from accelbyte_py_sdk.api.gdpr import admin_get_list_personal_data_request as admin_get_list_personal_data_request_internal
from accelbyte_py_sdk.api.gdpr.models import ModelsListPersonalDataResponse
from accelbyte_py_sdk.api.gdpr.models import ResponseError


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--request_date", "request_date", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_get_list_personal_data_request(
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        request_date: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_list_personal_data_request_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_get_list_personal_data_request_internal(
        limit=limit,
        offset=offset,
        request_date=request_date,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetListPersonalDataRequest failed: {str(error)}")
    click.echo("AdminGetListPersonalDataRequest success")
