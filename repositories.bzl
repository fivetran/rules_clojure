load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def rules_clojure_dependencies():
    jvm_maven_import_external(
        name = "org_clojure",
        artifact = "org.clojure:clojure:1.11.3",
        artifact_sha256 = "9c305409328e2b96e85dd2b5eb4b75810c67b76ba70ae4d0f6dde9bcfb55b1b7",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

def rules_clojure_toolchains():
    native.register_toolchains("@rules_clojure//:clojure_toolchain")
