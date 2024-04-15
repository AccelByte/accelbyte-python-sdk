import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_session
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsSessionResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateSessionRequest
client_version: str
configuration: str
deployment: str
game_mode: str
matching_allies: List[ModelsRequestMatchingAlly]
Definition: List[ModelsRequestMatchingAlly]
    matching_parties: List[ModelsRequestMatchParty]
    Definition: List[ModelsRequestMatchParty]
        party_attributes: Dict[str, Any]
        party_id: str
        party_members: List[ModelsRequestMatchMember]
        Definition: List[ModelsRequestMatchMember]
            user_id: str
namespace: str
notification_payload: ModelsMatchResultNotificationPayload
Definition: ModelsMatchResultNotificationPayload
pod_name: str
region: str
session_id: str

Example: '{"client_version": "e79qZYgyCa17Qcj0", "configuration": "pKTjLtzY6CkOOCvE", "deployment": "liL9RzfgwtkrNaXL", "game_mode": "Ooozqu9uEs854kJF", "matching_allies": [{"matching_parties": [{"party_attributes": {"8iJNg7fPRluAMC4E": {}, "LYRMqw8inhpHe1nQ": {}, "KmqcOoG6V4EtmVJU": {}}, "party_id": "EdgtgtNV4SCZBBBl", "party_members": [{"user_id": "2Ua1GwJXxdOBM76t"}, {"user_id": "BQDNFZcExRE8yT4V"}, {"user_id": "jnlRb49AcVFlM84m"}]}, {"party_attributes": {"FmEGkq4ImSRJfMHK": {}, "eCeeHYJVdUtNuJNv": {}, "Zge96SB3d6BMieM3": {}}, "party_id": "T6nhVReoOoEk19ie", "party_members": [{"user_id": "S5s4D9XjN3CPKJ9P"}, {"user_id": "O4MM70pDjvwwLn3h"}, {"user_id": "YwyVGz4iQc9sX5QP"}]}, {"party_attributes": {"xfTkvSXT2VSXcqrA": {}, "GllIta3LMndzRpzd": {}, "kajbegvyji0hliPI": {}}, "party_id": "v4dLWJqOLZ6zURsU", "party_members": [{"user_id": "39AbJpf1jPIH89pw"}, {"user_id": "05XicDPBpSyPuy1L"}, {"user_id": "RvXEfz2brLypo8Vj"}]}]}, {"matching_parties": [{"party_attributes": {"eDA4Jos1Iaolr435": {}, "Z6VZw3BHMYkNTsQM": {}, "o8r6JAAr7UiGGmxf": {}}, "party_id": "p06anW5FoCk3lLjg", "party_members": [{"user_id": "FexKTB3EO8OVJkXy"}, {"user_id": "wihAwX3sdhSnYZ8c"}, {"user_id": "MRetqZFr42wJq16J"}]}, {"party_attributes": {"ZrLT5uKQMu0eYndG": {}, "41pXicvFEDVAV9qq": {}, "G62xYqIT6BzYnVIg": {}}, "party_id": "0FVphjnnmXhOorN6", "party_members": [{"user_id": "irh5WrdtJAlNt07h"}, {"user_id": "iSwbF7yLiIHB0idg"}, {"user_id": "JgGleKjw4jwOEkT0"}]}, {"party_attributes": {"D3hW3ToCGZkQWo7I": {}, "iVeNMGstzTWQAPqj": {}, "TpR1NRmvwB2tt6rf": {}}, "party_id": "FARgLhrHAHtYDxMU", "party_members": [{"user_id": "8ZEJwYOLtxpYVp9N"}, {"user_id": "PXTUW8UIsyYQsqgn"}, {"user_id": "MaXeBIjHn2STLSZs"}]}]}, {"matching_parties": [{"party_attributes": {"NYZTsOlpY5rxgH4s": {}, "cgQgrmN1luRAZLvk": {}, "0GG7EgejqJVDdXBq": {}}, "party_id": "wxZUYeOz32EYVvfQ", "party_members": [{"user_id": "MfywS8HpmBwJAc5t"}, {"user_id": "6JIgNq05rugx5l9v"}, {"user_id": "R7WIrZQ0fceE5atu"}]}, {"party_attributes": {"Nqa2gArE81qQKCAw": {}, "gd3U22eWY2sEQUtz": {}, "oc42nkaiw8a5sKXZ": {}}, "party_id": "oitI7qvnyQ9vNKaN", "party_members": [{"user_id": "5hb1a0gvewphMa7i"}, {"user_id": "pK46lJBEeNKfsBkd"}, {"user_id": "mj0Wvi0GfLrSYKmN"}]}, {"party_attributes": {"ZPiAQXMaWeKH7kAz": {}, "rNRNIjlgwQJe9O9A": {}, "KZaP5wpP1nM7H5UB": {}}, "party_id": "ijMnxUmEr5nTrdmO", "party_members": [{"user_id": "J02shSkCN2FfVocC"}, {"user_id": "r53Cg3kqEt8WOwZf"}, {"user_id": "yajPNZVYfOHA8yZi"}]}]}], "namespace": "RkY9qXQfdP5zUI8F", "notification_payload": {}, "pod_name": "PuLTUW6s7AmoNs3l", "region": "CH47Ij0ld65FSbFQ", "session_id": "i14cklKCFTaQTPTG"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
