import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_view
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullViewInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import ViewUpdate

"""
body:
Definition: ViewUpdate
display_order: int
localizations: Dict[str, Localization]
name: str

Example: '{"displayOrder": 97, "localizations": {"OBboffoGZ3SDubcz": {"description": "edrpQV6pQnpE5syt", "localExt": {"uON8XpNLlJZ6ngMn": {}, "TziWHBHBVnez5rq0": {}, "bjg0ItPxNIwAgqKg": {}}, "longDescription": "peYy3F1C7tu91i3k", "title": "lKM0FTMhAMIKWFFv"}, "ojvfY6dNx4bfQRZa": {"description": "F2iVcoyLwtcWTYbV", "localExt": {"NOsnQ3X8NAJEO6za": {}, "ybtQ7geMexxW9xEx": {}, "NZ1kII7alDowSEHl": {}}, "longDescription": "YFvy4C4MtEYIrItU", "title": "LRUbBFIXSPrDlGLH"}, "597CZOk5aZchsfcc": {"description": "BOSSyGYQ0TJby29Q", "localExt": {"r8oEHGBXQtI3fSBY": {}, "u3nveDe2IbEHOXco": {}, "2reCr1ILqX3YjniR": {}}, "longDescription": "ZmtPRvsDmv9J2G4n", "title": "V51eEKyXBaJBmSTR"}}, "name": "fROJdplxXyDPRkG6"}'
"""

result, error = update_view(
    view_id=view_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
