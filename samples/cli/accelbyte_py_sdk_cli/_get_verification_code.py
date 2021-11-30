import yaml

import click

from accelbyte_py_sdk.api.iam import get_user_verification_code

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_verification_code(
        user_id,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)

    if doc:
        click.echo(get_user_verification_code.__doc__)
    result, error = get_user_verification_code(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get verification code success.")
    click.echo(yaml.safe_dump(result))
