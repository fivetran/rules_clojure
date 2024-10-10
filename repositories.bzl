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
        artifact_sha256 = "94cd99b6ea639641f37af4860a643b6ed399ee5a8be5d717cff0b663c8d75077",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

    jvm_maven_import_external(
        name = "org_clojure_core_specs_alpha",
        artifact = "org.clojure:core.specs.alpha:0.4.74",
        artifact_sha256 = "eb73ac08cf49ba840c88ba67beef11336ca554333d9408808d78946e0feb9ddb",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

def _dependencies_impl(_ctx):
    rules_clojure_dependencies()

dependencies = module_extension(
    implementation = _dependencies_impl,
)
