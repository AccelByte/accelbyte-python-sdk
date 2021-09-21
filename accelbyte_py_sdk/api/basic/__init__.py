"""Auto-generated top-level package for the basic API."""

__version__ = "1.17.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# file_upload
from .wrappers import generated_upload_url
from .wrappers import generated_user_upload_content_url
from .wrappers import public_generated_upload_url
from .wrappers import public_generated_user_upload_content_url

# misc
from .wrappers import update_country_group
from .wrappers import delete_country_group
from .wrappers import get_languages
from .wrappers import get_time_zones
from .wrappers import get_country_groups
from .wrappers import add_country_group
from .wrappers import get_countries
from .wrappers import public_get_time_zones
from .wrappers import public_get_languages
from .wrappers import public_get_countries

# namespace
from .wrappers import get_namespaces
from .wrappers import create_namespace
from .wrappers import change_namespace_status
from .wrappers import update_namespace
from .wrappers import get_namespace_publisher
from .wrappers import get_namespace
from .wrappers import delete_namespace
from .wrappers import public_get_namespace_publisher
from .wrappers import public_get_namespaces

# anonymization
from .wrappers import anonymize_user_profile

# user_profile
from .wrappers import get_user_profile_info
from .wrappers import update_user_profile
from .wrappers import delete_user_profile
from .wrappers import get_private_custom_attributes_info
from .wrappers import update_private_custom_attributes_partially
from .wrappers import get_custom_attributes_info
from .wrappers import update_custom_attributes_partially
from .wrappers import enable_user_profile_status
from .wrappers import public_get_user_profile_public_info
from .wrappers import get_my_profile_info
from .wrappers import update_my_profile
from .wrappers import create_my_profile
from .wrappers import get_user_zip_code
from .wrappers import update_user_zip_code
from .wrappers import public_get_user_profile_public_info_by_ids
from .wrappers import get_custom_attributes_info_1
from .wrappers import update_custom_attributes_partially_1
from .wrappers import public_get_user_profile_info
from .wrappers import public_update_user_profile
from .wrappers import public_create_user_profile
from .wrappers import public_enable_user_profile_status
