load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def rules_clojure_dependencies():
    jvm_maven_import_external(
        name = "org_clojure",
        artifact = "org.clojure:clojure:1.11.3",
        artifact_sha256 = "9c305409328e2b96e85dd2b5eb4b75810c67b76ba70ae4d0f6dde9bcfb55b1b7",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

    jvm_maven_import_external(
        name = "org_clojure_spec_alpha",
        artifact = "org.clojure:spec.alpha:0.5.238",
        artifact_sha1 = "d56a8d4c666ff8140e6d0a62d41263134be39254",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

    jvm_maven_import_external(
        name = "org_clojure_core_specs_alpha",
        artifact = "org.clojure:core.specs.alpha:0.4.74",
        artifact_sha1 = "4eb5dea521c4e6e1f68c2c47517f14a922003e60",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

def rules_clojure_toolchains():
    native.register_toolchains("@rules_clojure//:clojure_toolchain")
