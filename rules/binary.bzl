load("@rules_java//java/common:java_info.bzl", "JavaInfo")

def clojure_binary_impl(ctx):
    toolchain = ctx.toolchains["@rules_clojure//:toolchain"]

    deps = depset(
        direct = toolchain.files.runtime,
        transitive = [dep[JavaInfo].transitive_runtime_jars for dep in ctx.attr.deps],
    )

    ctx.actions.write(
        output = ctx.outputs.executable,
        content = "{java} -cp {classpath} clojure.main -m {main} $@".format(
            java = toolchain.java_runfiles,
            classpath = ":".join([f.short_path for f in deps.to_list()]),
            main = ctx.attr.main,
        ),
    )

    return DefaultInfo(
        runfiles = ctx.runfiles(
            files = toolchain.files.scripts + toolchain.files.jdk,
            transitive_files = deps,
        ),
    )
