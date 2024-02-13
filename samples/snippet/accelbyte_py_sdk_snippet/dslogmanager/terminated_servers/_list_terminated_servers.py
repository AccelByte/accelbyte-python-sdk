import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers
from accelbyte_py_sdk.api.dslogmanager.models import ModelsListTerminatedServersResponse
from accelbyte_py_sdk.api.dslogmanager.models import ResponseError

result, error = list_terminated_servers(
    deployment=deployment,
    end_date=end_date,
    game_mode=game_mode,
    limit=limit,
    next_=next_,
    party_id=party_id,
    pod_name=pod_name,
    previous=previous,
    provider=provider,
    region=region,
    session_id=session_id,
    source=source,
    start_date=start_date,
    status=status,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
