import jwt


def decode_jwt(json_web_token: str):
    options = {"verify_signature": False}
    json_object = jwt.decode(json_web_token, options=options)
    return json_object
