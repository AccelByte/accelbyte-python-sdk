import json
import os
from argparse import ArgumentParser
from typing import Optional

import accelbyte_py_sdk

# region constants

ENVIRONMENT_KEYS = ["APP_BASE_URL", "APP_CLIENT_ID", "APP_CLIENT_SECRET"]

# endregion constants


# region classes


class Environment(object):
    def __init__(self, keys):
        for key in keys:
            if key not in os.environ:
                raise EnvironmentError
            setattr(self, key, os.environ[key])


# endregion classes


def shared_lambda_handler_process(event):
    # 01. Load Environment Variables.
    env = Environment(keys=ENVIRONMENT_KEYS)
    log_done("load environment variables")

    # 02. Extract the Bearer Auth Token from the Authorization header.
    authorization = str(event.get("headers").get("Authorization"))
    bearer_auth_token, error = extract_bearer_auth_token(authorization)
    if error:
        return error
    log_done("extract Bearer Auth Token")

    # 03. Convert Bearer Auth Token into an OAuth Token object.
    oauth_token, error = convert_bearer_auth_token_to_oauth_token(bearer_auth_token)
    if error:
        return error
    log_done("convert Bearer Auth Token")

    # 04. Initialize the AccelByte Python SDK.
    accelbyte_py_sdk.initialize(
        options={
            "config": "MyConfigRepository",
            "config_params": (
                [],  # args
                {
                    "base_url": env.APP_BASE_URL,
                    "client_id": env.APP_CLIENT_ID,
                    "client_secret": env.APP_CLIENT_SECRET,
                },  # kwargs
            ),
            "token": "MyTokenRepository",
            "token_params": ([], {"token": oauth_token}),  # args  # kwargs
            "http": "RequestsHttpClient",
        }
    )
    log_done("initialize SDK")


def delete_user_stat_lambda_handler(event, context):
    """Delete Stat Lambda function

    Parameters
    ----------
    event: dict, required
        API Gateway Lambda Proxy Input Format

        Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format

    context: object, required
        Lambda Context runtime methods and attributes

        Context doc: https://docs.aws.amazon.com/lambda/latest/dg/python-context-object.html

    Returns
    ------
    API Gateway Lambda Proxy Output Format: dict

        Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
    """

    # 01-04.
    shared_lambda_handler_process(event)

    # 05. Extract request query parameters and convert it into parameters for the DeleteUserStatItems request.
    from accelbyte_py_sdk.core import HttpResponse
    from accelbyte_py_sdk.api.social import delete_user_stat_items

    query_params = event.get("queryStringParameters", {}) or {}
    required_query_param = ["namespace", "userId", "statCode"]
    for required_query_param in required_query_param:
        if (
            required_query_param not in query_params
            or not query_params[required_query_param]
        ):
            return create_response(
                400,
                HttpResponse.create_error(
                    400, f"Missing required query param '{required_query_param}'."
                ),
            )
    _, error = delete_user_stat_items(
        stat_code=query_params["statCode"],
        user_id=query_params["userId"],
        namespace=query_params.get("namespace", None),
    )
    log_done("request finished")

    return create_response(
        status_code=400 if error else 200, body=error if error else ""
    )


def get_user_stat_lambda_handler(event, context):
    """Get Stat Lambda function

    Parameters
    ----------
    event: dict, required
        API Gateway Lambda Proxy Input Format

        Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format

    context: object, required
        Lambda Context runtime methods and attributes

        Context doc: https://docs.aws.amazon.com/lambda/latest/dg/python-context-object.html

    Returns
    ------
    API Gateway Lambda Proxy Output Format: dict

        Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
    """

    # 01-04.
    shared_lambda_handler_process(event)

    # 05. Extract request query parameters and convert it into parameters for the GetUserStatItems request.
    from accelbyte_py_sdk.core import HttpResponse
    from accelbyte_py_sdk.api.social import get_user_stat_items

    query_params = event.get("queryStringParameters", {}) or {}
    required_query_param = ["namespace", "userId"]
    for required_query_param in required_query_param:
        if (
            required_query_param not in query_params
            or not query_params[required_query_param]
        ):
            return create_response(
                400,
                HttpResponse.create_error(
                    400, f"Missing required query param '{required_query_param}'."
                ),
            )
    result, error = get_user_stat_items(
        user_id=query_params["userId"],
        limit=query_params.get("limit", None),
        offset=query_params.get("offset", None),
        stat_codes=query_params.get("statCodes", None),
        tags=query_params.get("tags", None),
        namespace=query_params.get("namespace", None),
    )
    log_done("request finished")

    return create_response(
        status_code=400 if error else 200, body=error if error else result.to_dict()
    )


def post_user_stat_lambda_handler(event, context):
    """Post Stat Lambda function

    Parameters
    ----------
    event: dict, required
        API Gateway Lambda Proxy Input Format

        Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format

    context: object, required
        Lambda Context runtime methods and attributes

        Context doc: https://docs.aws.amazon.com/lambda/latest/dg/python-context-object.html

    Returns
    ------
    API Gateway Lambda Proxy Output Format: dict

        Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
    """

    # 01-04.
    shared_lambda_handler_process(event)

    # 05. Extract request query parameters and convert it into parameters for the CreateUserStatItem request.
    from accelbyte_py_sdk.core import HttpResponse
    from accelbyte_py_sdk.api.social import create_user_stat_item

    query_params = event.get("queryStringParameters", {}) or {}
    required_query_param = ["namespace", "userId", "statCode"]
    for required_query_param in required_query_param:
        if (
            required_query_param not in query_params
            or not query_params[required_query_param]
        ):
            return create_response(
                400,
                HttpResponse.create_error(
                    400, f"Missing required query param '{required_query_param}'."
                ),
            )
    result, error = create_user_stat_item(
        stat_code=query_params["statCode"],
        user_id=query_params["userId"],
        namespace=query_params.get("namespace", None),
    )
    log_done("request finished")

    return create_response(
        status_code=400 if error else 200, body=error if error else result.to_dict()
    )


def put_user_stat_lambda_handler(event, context):
    """Put Stat Lambda function

    Parameters
    ----------
    event: dict, required
        API Gateway Lambda Proxy Input Format

        Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format

    context: object, required
        Lambda Context runtime methods and attributes

        Context doc: https://docs.aws.amazon.com/lambda/latest/dg/python-context-object.html

    Returns
    ------
    API Gateway Lambda Proxy Output Format: dict

        Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
    """

    # 01-04.
    shared_lambda_handler_process(event)

    # 05. Extract request query parameters and convert it into parameters for the IncUserStatItemValue request.
    from accelbyte_py_sdk.core import HttpResponse
    from accelbyte_py_sdk.api.social import inc_user_stat_item_value
    from accelbyte_py_sdk.api.social.models import StatItemInc

    query_params = event.get("queryStringParameters", {}) or {}
    required_query_param = ["namespace", "userId", "statCode"]
    for required_query_param in required_query_param:
        if (
            required_query_param not in query_params
            or not query_params[required_query_param]
        ):
            return create_response(
                400,
                HttpResponse.create_error(
                    400, f"Missing required query param '{required_query_param}'."
                ),
            )

    # 05a. Bonus Round: We can either take in an 'inc' value from the query string or take a JSON body that matches StatItemInc ex: '{"inc":1}'.
    inc = query_params.get("inc", None)
    if inc is not None:
        if not isinstance(inc, float):
            # noinspection PyBroadException
            try:
                inc = float(inc)
            except:
                return create_response(
                    400, HttpResponse.create_error(400, f"Invalid 'inc' value.")
                )
        body = StatItemInc().with_inc(value=inc)
    else:
        raw_body = event.get("body", None)
        if raw_body is None:
            return create_response(
                400, HttpResponse.create_error(400, f"Missing required body.")
            )
        if isinstance(raw_body, str):
            try:
                raw_body = json.loads(raw_body)
            except json.JSONDecodeError as e:
                return create_response(
                    400, HttpResponse.create_error(400, f"Invalid body.")
                )
        body = StatItemInc.create_from_dict(dict_=raw_body)
    if body is None or not hasattr(body, "inc") or not isinstance(body.inc, float):
        return create_response(400, HttpResponse.create_error(400, f"Invalid body."))
    result, error = inc_user_stat_item_value(
        stat_code=query_params["statCode"],
        user_id=query_params["userId"],
        body=body,
        namespace=query_params.get("namespace", None),
    )
    log_done("request finished")

    return create_response(
        status_code=400 if error else 200, body=error if error else result.to_dict()
    )


def main(args):
    from accelbyte_py_sdk.services.auth import login_user
    from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

    if "token" in args and args["token"]:
        token = args["token"]
        oauth_token, error = convert_bearer_auth_token_to_oauth_token(
            bearer_auth_token=token
        )
        if error:
            print(str(error))
            exit(1)
        user_id = oauth_token.user_id
    else:
        env = Environment(keys=ENVIRONMENT_KEYS)
        username = args["username"]
        password = args["password"]
        accelbyte_py_sdk.initialize(
            options={
                "config": "MyConfigRepository",
                "config_params": (
                    [],  # args
                    {
                        "base_url": env.APP_BASE_URL,
                        "client_id": env.APP_CLIENT_ID,
                        "client_secret": env.APP_CLIENT_SECRET,
                    },  # kwargs
                ),
            }
        )

        oauth_token: Optional[OauthmodelTokenResponseV3] = None
        oauth_token, error = login_user(username, password)
        if error:
            print(str(error))
            exit(1)

        token = oauth_token.access_token
        if not token:
            print("Access token not found.")
            exit(1)

        user_id = oauth_token.user_id

        accelbyte_py_sdk.reset()

    stat_code_default = "elo"
    context = None
    event = {
        "headers": {"Authorization": f"Bearer {token}"},
        "queryStringParameters": {"statCode": stat_code_default, "userId": user_id},
    }
    event["queryStringParameters"]["namespace"] = "accelbyte"

    mode = args["mode"]
    if mode == "delete":
        result = delete_user_stat_lambda_handler(event, context)
    elif mode == "get":
        result = get_user_stat_lambda_handler(event, context)
    elif mode == "post":
        result = post_user_stat_lambda_handler(event, context)
    elif mode == "put":
        event["body"] = {"inc": 1}
        result = put_user_stat_lambda_handler(event, context)
    else:
        raise ValueError

    print(json.dumps(result, indent=2))


# region log


def log(message, tag=None):
    if tag is None:
        print(message)
    else:
        print(f"[{tag}]: {message}")


def log_done(message):
    log(message, "done")


def log_wait(message):
    log(message, "wait")


def log_warn(message):
    log(message, "warn")


# endregion log


# region response


def create_response(status_code, body):
    from accelbyte_py_sdk.core import HttpResponse

    if isinstance(body, Exception):
        body = {"error": str(body)}
    elif isinstance(body, HttpResponse):
        body = {"message": str(body)}
    elif isinstance(body, str):
        body = {"message": body}
    elif hasattr(body, "__dict__"):
        body = body.__dict__
    elif hasattr(body, "to_dict"):
        body = body.to_dict()
    if not isinstance(body, dict):
        raise NotImplementedError
    return {"statusCode": status_code, "body": json.dumps(body)}


# endregion response


# region token


def convert_bearer_auth_token_to_oauth_token(bearer_auth_token):
    import jwt
    from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

    # NOTE: the permission keys in the JSON web token permission is different from the keys defined in the schema
    def patch_web_token(wt):
        permissions = wt.get("permissions")
        if permissions:
            for permission in permissions:
                if "Action" in permission:
                    permission["action"] = permission["Action"]
                    del permission["Action"]
                if "Resource" in permission:
                    permission["resource"] = permission["Resource"]
                    del permission["Resource"]

    try:
        web_token = jwt.decode(bearer_auth_token, options={"verify_signature": False})
        patch_web_token(web_token)
        oauth_token = OauthmodelTokenResponseV3.create_from_dict(
            web_token, include_empty=True
        )
        oauth_token.access_token = bearer_auth_token
        return oauth_token, None
    except ValueError as e:
        return None, create_response(status_code=400, body=e)


def extract_bearer_auth_token(authorization):
    if authorization is None:
        return None, create_response(
            status_code=403, body="Authorization header is missing."
        )
    if not authorization.startswith("Bearer "):
        return None, create_response(
            status_code=400,
            body=f"Invalid Authorization. Expecting Bearer Auth Token. {authorization}",
        )
    bearer_auth_token = authorization.removeprefix("Bearer ")
    return bearer_auth_token, None


# endregion token


# region utils


def parse_args():
    parser = ArgumentParser()

    parser.add_argument(
        "-t", "--token", type=str, required=False, help="sets the token"
    )

    parser.add_argument(
        "-u", "--username", type=str, required=False, help="sets the username"
    )
    parser.add_argument(
        "-p", "--password", type=str, required=False, help="sets the password"
    )

    parser.add_argument(
        "-m",
        "--mode",
        default="get",
        type=str,
        required=False,
        help="sets the mode, choose from delete, get, post, put (default: get)",
    )

    return vars(parser.parse_args())


# endregion utils


if __name__ == "__main__":
    main(parse_args())
