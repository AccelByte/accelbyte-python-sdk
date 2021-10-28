import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import generated_upload_url as generated_upload_url_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import FileUploadUrlInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("folder", type=str)
@click.argument("file_type", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def generated_upload_url(
        folder: str,
        file_type: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(generated_upload_url_internal.__doc__)
    result, error = generated_upload_url_internal(
        folder=folder,
        file_type=file_type,
        namespace=namespace,
    )
    if error:
        raise Exception(f"generatedUploadUrl failed: {str(error)}")
    click.echo("generatedUploadUrl success")
