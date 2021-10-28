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
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def generated_user_upload_content_url(
        user_id: str,
        file_type: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(generated_user_upload_content_url_internal.__doc__)
    result, error = generated_user_upload_content_url_internal(
        user_id=user_id,
        file_type=file_type,
        namespace=namespace,
    )
    if error:
        raise Exception(f"generatedUserUploadContentUrl failed: {str(error)}")
    click.echo("generatedUserUploadContentUrl success")
