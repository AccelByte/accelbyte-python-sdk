# justice-basic-service (1.26.0)

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
from ....api.basic import generated_user_upload_content_url as generated_user_upload_content_url_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import FileUploadUrlInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("file_type", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def generated_user_upload_content_url(
        user_id: str,
        file_type: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(generated_user_upload_content_url_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = generated_user_upload_content_url_internal(
        user_id=user_id,
        file_type=file_type,
        namespace=namespace,
    )
    if error:
        raise Exception(f"generatedUserUploadContentUrl failed: {str(error)}")
    click.echo("generatedUserUploadContentUrl success")
