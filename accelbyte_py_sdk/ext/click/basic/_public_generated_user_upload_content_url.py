import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import public_generated_user_upload_content_url as public_generated_user_upload_content_url_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import FileUploadUrlInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("file_type", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_generated_user_upload_content_url(
        user_id: str,
        file_type: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_generated_user_upload_content_url_internal.__doc__)
    result, error = public_generated_user_upload_content_url_internal(
        user_id=user_id,
        file_type=file_type,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGeneratedUserUploadContentUrl failed: {str(error)}")
    click.echo("publicGeneratedUserUploadContentUrl success")
