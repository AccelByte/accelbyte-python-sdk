import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import list_terminated_servers
from accelbyte_py_sdk.api.dsartifact.models import ModelsListTerminatedServersResponse
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = list_terminated_servers(
    deployment=deployment,
    game_mode=game_mode,
    limit=limit,
    next_=next_,
    party_id=party_id,
    pod_name=pod_name,
    previous=previous,
    provider=provider,
    region=region,
    session_id=session_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
