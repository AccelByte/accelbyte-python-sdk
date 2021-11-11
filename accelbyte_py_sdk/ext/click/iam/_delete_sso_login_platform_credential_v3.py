# justice-iam-service (4.7.0)

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
from ....api.iam import delete_sso_login_platform_credential_v3 as delete_sso_login_platform_credential_v3_internal
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_sso_login_platform_credential_v3(
        platform_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_sso_login_platform_credential_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_sso_login_platform_credential_v3_internal(
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteSSOLoginPlatformCredentialV3 failed: {str(error)}")
    click.echo("DeleteSSOLoginPlatformCredentialV3 success")
