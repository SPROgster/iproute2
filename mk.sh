export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$1/../libbpf/src/
LIBBPF_FORCE=on LIBBPF_DIR=$1/../libbpf/src/build ./configure; make
