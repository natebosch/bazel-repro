def _failing_impl(ctx):
  output = ctx.new_file("not_really")
  ctx.action(
      executable = ctx.executable._executable,
      outputs = [output],
  )
  return struct(files=set([output]))

build_with_failing_action = rule(
    attrs = {
        "_executable": attr.label(
            allow_files = True,
            executable = True,
            cfg = "host",
            default = Label("//:always_fails"),
        )
    },
    implementation = _failing_impl,
)
