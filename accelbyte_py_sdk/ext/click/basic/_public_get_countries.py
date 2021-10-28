import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import public_get_countries as public_get_countries_internal
from ....api.basic.models import CountryObject
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--lang", "lang", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_countries(
        lang: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_countries_internal.__doc__)
    result, error = public_get_countries_internal(
        lang=lang,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetCountries failed: {str(error)}")
    click.echo("publicGetCountries success")
