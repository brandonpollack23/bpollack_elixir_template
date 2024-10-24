IEx.configure(
  colors: [
    enabled: true,
    # For eval results, cyan like VSCode's method color
    eval_result: [:cyan],
    # Error messages in red
    eval_error: [:red],
    # Information in light blue (like hints)
    eval_info: [:light_blue],
    # Stacktrace in yellow
    stack_trace: [:yellow],
    syntax_colors: [
      # Numbers are typically light magenta in VSCode Dark+
      number: [:light_magenta],
      # Atoms in light blue, similar to keywords in VSCode
      atom: [:light_blue],
      # Strings in light green
      string: [:light_green],
      # Booleans in blue
      boolean: [:blue],
      # nil in grey
      nil: [:light_black],
      # Identifiers in white
      identifier: [:white],
      # Comments in grey
      comment: [:light_black],
      # Operators in light yellow
      operator: [:light_yellow],
      # Modules in cyan
      module: [:cyan],
      # Functions in light cyan
      function: [:light_cyan]
    ]
  ],
  inspect: [limit: 50, pretty: true]
)
