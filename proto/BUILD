load("@rules_cc//cc:defs.bzl", "cc_proto_library")

proto_library(
    name = "securemessage_proto",
    srcs = ["securemessage.proto"],
    visibility = ["//visibility:public"],
)

cc_proto_library(
    name = "securemessage_cc_proto",
    deps = [":securemessage_proto"],
    visibility = ["//visibility:public"],
)
