load("//ext_defs:external.bzl", "zlib_ext")

def _non_mod_zlib_impl(mod_ctx):
    zlib_ext()

non_mod_zlib = module_extension(
    implementation = _non_mod_zlib_impl,
)