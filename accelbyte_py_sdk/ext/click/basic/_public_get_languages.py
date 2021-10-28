import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import public_get_languages as public_get_languages_internal
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_languages(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_languages_internal.__doc__)
    result, error = public_get_languages_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetLanguages failed: {str(error)}")
    click.echo("publicGetLanguages success")
