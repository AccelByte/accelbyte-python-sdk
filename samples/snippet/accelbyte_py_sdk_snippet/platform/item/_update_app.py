import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_app
from accelbyte_py_sdk.api.platform.models import AppUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullAppInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: AppUpdate
carousel: List[Slide]
Definition: List[Slide]
    alt: str
    preview_url: str
    thumbnail_url: str
    type_: str
    url: str
    video_source: str
developer: str
forum_url: str
genres: List[str]
localizations: Dict[str, AppLocalization]
platform_requirements: Dict[str, List[Requirement]]
platforms: List[str]
players: List[str]
primary_genre: str
publisher: str
release_date: str
website_url: str

Example: '{"carousel": [{"alt": "VoBhkgenycHYiHqj", "previewUrl": "aJyQfX8eTq0drFKO", "thumbnailUrl": "TkN1icaHg5JX9Fsc", "type": "video", "url": "zjj4kJSO2qXdCK2g", "videoSource": "vimeo"}, {"alt": "EZhMMuA8qK6ZDTEL", "previewUrl": "ZF191DPtC2poLLzF", "thumbnailUrl": "4BMufFXup0AKLBon", "type": "video", "url": "omQCA2nj6srCphfU", "videoSource": "vimeo"}, {"alt": "GcpO1Ywv03IfYIVd", "previewUrl": "cD7PiArDQUFFB1qe", "thumbnailUrl": "GAA3m4pzFBr3FpJ7", "type": "video", "url": "jVTnqp0hxwcpqDsn", "videoSource": "generic"}], "developer": "3T42iGUdaHfH2ifO", "forumUrl": "elaZAI54STFTr0TH", "genres": ["Strategy", "RPG", "Casual"], "localizations": {"D5QFKWjmiJiMNdf0": {"announcement": "f9uPGvW8742ClmzE", "slogan": "OmGuoHfgqCDJjbHl"}, "6I8ALhVrbJyjmuTC": {"announcement": "nYw8kCoqRCO9Ee2H", "slogan": "VfnSiwYTZK2XbgQl"}, "z0kaoqCZASN3FojU": {"announcement": "zoJ0WaxeV8fLfo03", "slogan": "n0AZDAWDSXGJPHTG"}}, "platformRequirements": {"QAjCm7BPCTKioIz5": [{"additionals": "qckPLE5eqV2WR67y", "directXVersion": "D6XyTDNT6P7xtPbj", "diskSpace": "RdS57KC7xfOiFUz2", "graphics": "yup26EFyfJQRCFKO", "label": "twGPEg2qTfco4WrA", "osVersion": "FN2sqFZkhItacdsZ", "processor": "bP9GbUB0lFHE1Buh", "ram": "LUxvNxRhUzxvs5VN", "soundCard": "I5VBNpziADZJOlCq"}, {"additionals": "rtjhylOtkK6e4vbO", "directXVersion": "7W01NNO43zc7Ko4c", "diskSpace": "4EMGPXt9icd35AgG", "graphics": "mGY7PrvR5sIlHieO", "label": "FokQmTl6b2OsLecp", "osVersion": "7ih0FX315j46B3fV", "processor": "n1vFL0GBI1rKpwjs", "ram": "qkElfb1Y2Bfl9BAD", "soundCard": "t4Gk6zgBmcmz3KRf"}, {"additionals": "E4btm7a4lwbwbcSn", "directXVersion": "iBGeHvM2Gtwpp5GI", "diskSpace": "zUQxrnH3I64ds7Op", "graphics": "1DtgNId5fVgQP5ty", "label": "x4cSbCkfyARb0Rs1", "osVersion": "fdUyDdZEvy93O0bF", "processor": "t9q8RPoWsMgMvTuc", "ram": "VG3upPxar43rBzk8", "soundCard": "xTyFM02vTK6YELiy"}], "IWP0ovM2Ur07wGns": [{"additionals": "VshPKQoRivGONnQV", "directXVersion": "UL3rx5cwKXjXJjaA", "diskSpace": "EK8ninn0FHrkEn37", "graphics": "CHWr76AjjoqxYBZB", "label": "fsSFcpOcxNlSjpSB", "osVersion": "RWA6YaNrqBvOQ1XW", "processor": "QSywSQNRAxnlox6n", "ram": "DInKe9xaV4NLMbE5", "soundCard": "z7vJQ4sFhuLQHEi7"}, {"additionals": "STaJgEXnjIoFLjSV", "directXVersion": "ky6RznJYyDTWkbRW", "diskSpace": "rdeZ216B5N5cZYgx", "graphics": "oCb0zGVEUA7ps2eJ", "label": "r1axkE0H9S8oNnjl", "osVersion": "gEWBawdLKuJ8GFhU", "processor": "hhlaB7PpR54yyWgG", "ram": "XYIImvEfcXFN3vMC", "soundCard": "rAdIQJRWhCIFrklm"}, {"additionals": "PO4L1HM6OfOHCF94", "directXVersion": "eSBOgJSwxuojOqaq", "diskSpace": "BGWByJRjc5Dpr3CE", "graphics": "onMotsObuqhxZRsH", "label": "pIrYOwuznWIXJIzd", "osVersion": "AweBdBVkYxXMke0E", "processor": "VbS1uZiPukVIaSOp", "ram": "AE6lnQ26De5YPHw1", "soundCard": "TFGFK1Sq3IBTn4ND"}], "s5bWXHTWVUleOq6Z": [{"additionals": "Ub68ctLMCwHcm76u", "directXVersion": "9kFGyoLRE64eefvK", "diskSpace": "zdMtFZ3fSjkMuzbq", "graphics": "lVPBk3whOrSURiJ9", "label": "8w4kBclNUJFQdxiB", "osVersion": "Q4Nx2EjuBo4QnoA5", "processor": "N6XU14NyfPlmWBhW", "ram": "aYgr9DpoomQ21lMu", "soundCard": "QGLEWWAsz66YGGYg"}, {"additionals": "pAepdenlyxd9GYyQ", "directXVersion": "GH3pfuzRJz70cm0J", "diskSpace": "hU56pRKxKo4muUJK", "graphics": "LRfWZTNmedbB2kEr", "label": "l2ZSMYw6hEsMeOrR", "osVersion": "DJgATRbOUT6iPGe3", "processor": "QYXgDrLqDni9Bcpi", "ram": "CxPxcWJl4d0bTjC8", "soundCard": "xGhE48gbbvLYorwt"}, {"additionals": "Qh01aKj6BnAFTAdr", "directXVersion": "rJFqrbhww30XNfuo", "diskSpace": "wWmzrHgjhDlNNKJx", "graphics": "SArB8etdUFMk5ZMa", "label": "DQ13GJJMjiVlmviv", "osVersion": "3k3DPkAiiqoLO5xh", "processor": "jHDPD3wcbY3hybCz", "ram": "i3dHYf0ofy6M7rcO", "soundCard": "E2IMm178NYxT8IHv"}]}, "platforms": ["Android", "MacOS", "Android"], "players": ["CrossPlatformMulti", "LocalCoop", "CrossPlatformMulti"], "primaryGenre": "Adventure", "publisher": "utquINTVPjSsQS8q", "releaseDate": "1976-07-04T00:00:00Z", "websiteUrl": "I8VlzQpiRKVg8Uj0"}'
"""

result, error = update_app(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
