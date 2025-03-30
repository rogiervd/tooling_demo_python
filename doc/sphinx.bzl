"""General (hopefully) rules for Sphinx."""

def _sphinx_configuration_impl(ctx):
    target_name = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.expand_template(
        output = target_name,
        template = ctx.file.template,
        substitutions = {
            "{PROJECT_NAME}": ctx.attr.project_name,
            "{COPYRIGHT}": ctx.attr.copyright,
            "{VERSION}": ctx.attr.version,
            "{MAIN_INPUT_FILE}": ctx.attr.main_input_file,
            "Template for the configuration file": "Automatically generated configuration file",
        },
    )
    return [DefaultInfo(files = depset([target_name]))]

sphinx_configuration = rule(
    implementation = _sphinx_configuration_impl,
    attrs = {
        "template": attr.label(
            allow_single_file = [".tpl"],
            mandatory = True,
        ),
        "project_name": attr.string(),
        "main_input_file": attr.string(default = "index"),
        "copyright": attr.string(),
        "version": attr.string(),
    },
)
