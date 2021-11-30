import click

from accelbyte_py_sdk.api.iam import admin_send_verification_code_v3
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationCodeRequestV3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.argument("context")
@click.argument("email_address")
@click.argument("language_tag")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def send_verification_code(
        user_id,
        context,
        email_address,
        language_tag,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_send_verification_code_v3.__doc__)
    result, error = admin_send_verification_code_v3(
        body=ModelSendVerificationCodeRequestV3.create(
            email_address=email_address,
            context=context,
            language_tag=language_tag
        ),
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Send verification code success.")
