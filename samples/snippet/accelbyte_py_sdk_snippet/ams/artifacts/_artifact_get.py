import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import artifact_get
from accelbyte_py_sdk.api.ams.models import ApiArtifactListResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = artifact_get(
    artifact_type=artifact_type,
    count=count,
    end_date=end_date,
    fleet_id=fleet_id,
    image_id=image_id,
    max_size=max_size,
    min_size=min_size,
    offset=offset,
    region=region,
    server_id=server_id,
    start_date=start_date,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
