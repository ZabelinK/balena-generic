FILESEXTRAPATHS:append := ":${THISDIR}/balena-files"
SYSTEMD_AUTO_ENABLE = "enable"

SRC_URI:append = " \
    file://77-mm-cinterion-port-types.rules \
"


do_install:append() {
    install -m 0644 ${WORKDIR}/77-mm-cinterion-port-types.rules ${D}${base_libdir}/udev/rules.d/
}

FILES:${PN} += " \
    ${base_libdir}/udev/rules.d/77-mm-cinterion-port-types.rules \
    "
