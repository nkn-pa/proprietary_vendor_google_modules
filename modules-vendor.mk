# Copyright (C) 2020 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_SOONG_NAMESPACES += \
    vendor/google/modules

PRODUCT_COPY_FILES += \
    vendor/google/modules/proprietary/system/etc/permissions/GoogleDocumentsUI_permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/GoogleDocumentsUI_permissions.xml \
    vendor/google/modules/proprietary/system/etc/permissions/GoogleExtServices_permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/GoogleExtServices_permissions.xml \
    vendor/google/modules/proprietary/system/etc/permissions/GooglePermissionController_permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/GooglePermissionController_permissions.xml

PRODUCT_PACKAGES += \
    com.android.conscrypt \
    com.android.media \
    com.android.media.swcodec \
    com.android.resolv \
    com.android.tzdata \
    GoogleDocumentsUIPrebuilt \
    GoogleExtServicesPrebuilt \
    GooglePermissionControllerPrebuilt \
    ModuleMetadataGooglePrebuilt

# Config
$(call inherit-product, vendor/google/modules/config.mk)
