load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "env",
    remote = "https://github.com/vvviktor/bazel-mingw-toolchain.git",
    commit = "50333d6fae4f5331339533b06f65d4e5eb12f9d3",
)

load("//:defs.bzl", "defs")

defs()