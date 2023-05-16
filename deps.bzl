load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def securemessage_deps():
    http_archive(
        name = "com_google_protobuf",
        strip_prefix = "protobuf-3.22.5",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.22.5.tar.gz"],
    )

    http_archive(
        name = "com_google_protobuf_cc",
        strip_prefix = "protobuf-3.22.5",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.22.5.tar.gz"],
    )

    http_archive(
        name = "boringssl",  # Must match upstream workspace name.
        # Gitiles creates gzip files with an embedded timestamp, so we cannot use
        # sha256 to validate the archives.  We must rely on the commit hash and
        # https. Commits must come from the master-with-bazel branch.
        urls = ["https://codeload.github.com/google/boringssl/zip/master-with-bazel"],
        strip_prefix = "boringssl-master-with-bazel",
        type = "zip",
    )

    http_archive(
        name = "com_google_googletest",
        strip_prefix = "googletest-main",
        urls = ["https://github.com/google/googletest/archive/main.zip"],
    )
