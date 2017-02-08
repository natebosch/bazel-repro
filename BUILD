load("//:failing_rule.bzl", "build_with_failing_action")

build_with_failing_action(
    name = "foo",
)

sh_binary(
    name = "always_fails",
    srcs = ["fails.sh"],
)
