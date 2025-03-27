---@meta

---@class LazyNvim
---@field path string
---@field repo string
---@field spec LazySpec
---@field config LazyConfig
---@field bootstrap fun(): nil
---@field setup fun(): nil

---@alias CopilotName 'codeium'

---@alias LanguagePack 'angular' | 'ansible' | 'astro' | 'bash' | 'blade' | 'chezmoi' | 'clojure' | 'cmake' | 'cpp' | 'crystal' | 'cs-omnisharp' | 'cs' | 'cue' | 'dart' | 'docker' | 'edgedb' | 'elixir-phoenix' | 'elm' | 'fish' | 'full-dadbod' | 'gleam' | 'go' | 'godot' | 'harper' | 'haskell' | 'haxe' | 'helm' | 'html-css' | 'hyprlang' | 'java' | 'jj' | 'json' | 'julia' | 'just' | 'kotlin' | 'laravel' | 'lean' | 'lua' | 'markdown' | 'mdx' | 'moonbit' | 'nextflow' | 'nim' | 'nix' | 'nvchad-ui' | 'ocaml' | 'php' | 'pkl' | 'prisma' | 'proto' | 'ps1' | 'purescript' | 'python-ruff' | 'python' | 'quarto' | 'rainbow-delimiter-indent-blankline' | 'rego' | 'ruby' | 'rust' | 'scala' | 'sql' | 'svelte' | 'swift' | 'tailwindcss' | 'templ' | 'terraform' | 'thrift' | 'toml' | 'typescript-all-in-one' | 'typescript-deno' | 'typescript' | 'typst' | 'verilog' | 'vue' | 'wgsl' | 'xml' | 'yaml' | 'zig'

---@class NeovimSetupOptions
---@field shell? string The shell to use. Defaults to `vim.o.shell`
---@field copilot? CopilotName
---@field language_packs? LanguagePack[]

---@class NeovimSetup
---@field options NeovimSetupOptions
---@field parse_options fun(options: NeovimSetupOptions): nil
---@field vim_options fun(): nil
---@field lazy_nvim fun(): nil
---@field keymaps fun(): nil
---@field init fun(options?: NeovimSetupOptions): nil
