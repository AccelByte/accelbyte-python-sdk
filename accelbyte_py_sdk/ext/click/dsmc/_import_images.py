import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import import_images as import_images_internal
from ....api.dsmc.models import ModelsImportResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("file", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def import_images(
        file: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(import_images_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = import_images_internal(
        file=file,
    )
    if error:
        raise Exception(f"ImportImages failed: {str(error)}")
    click.echo("ImportImages success")
