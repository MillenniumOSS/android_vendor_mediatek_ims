#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'vendor/mediatek/ims',
]

blob_fixups: blob_fixups_user_type = {
    'system_ext/lib64/libsink-mtk.so': blob_fixup()
        .fix_soname()
        .add_needed('libaudioclient_shim.so'),
    'system_ext/lib64/libimsma.so': blob_fixup()
        .replace_needed('libsink.so', 'libsink-mtk.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'ims',
    'mediatek',
    device_rel_path='vendor/mediatek/ims',
    blob_fixups=blob_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
