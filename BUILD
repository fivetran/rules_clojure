load("@rules_clojure//:toolchains.bzl", "clojure_toolchain")
load("@rules_jvm_external//:defs.bzl", "artifact")

toolchain_type(
    name = "toolchain",
    visibility = ["//visibility:public"],
)

clojure_toolchain(
    name = "default_clojure_toolchain",
    classpath = [
        artifact("org.clojure:clojure"),
        artifact("org.clojure:spec.alpha"),
        artifact("org.clojure:core.specs.alpha"),
    ],
)

toolchain(
    name = "clojure_toolchain",
    toolchain = ":default_clojure_toolchain",
    toolchain_type = "@rules_clojure//:toolchain",
)
