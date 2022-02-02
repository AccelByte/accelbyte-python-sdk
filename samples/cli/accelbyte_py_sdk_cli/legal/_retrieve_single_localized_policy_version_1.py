# justice-legal-service (1.16.0)

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
from accelbyte_py_sdk.api.legal import retrieve_single_localized_policy_version_1 as retrieve_single_localized_policy_version_1_internal
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrieveLocalizedPolicyVersionPublicResponse


@click.command()
@click.argument("localized_policy_version_id", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def retrieve_single_localized_policy_version_1(
        localized_policy_version_id: str,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(retrieve_single_localized_policy_version_1_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    _, error = retrieve_single_localized_policy_version_1_internal(
        localized_policy_version_id=localized_policy_version_id,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"retrieveSingleLocalizedPolicyVersion_1 failed: {str(error)}")
    click.echo("retrieveSingleLocalizedPolicyVersion_1 success")
