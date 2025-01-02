local configs = require("nvchad.configs.lspconfig")

local servers = {
	ansiblels = {
		settings = {
			ansible = {
				path = "ansible",
			},
			validation = {
				enabled = true,
				lint = {
					enabled = true,
					path = "ansible-lint",
				},
			},
		},
	},
	dockerls = {},
	pyright = {
		settings = {
			python = {
				pythonPath = "/opt/miniconda3/bin/python3",
			},
		},
	},
	terraformls = {},
	helm_ls = {
		settings = {
			["helm-ls"] = {
				yamlls = {
					path = "yaml-language-server",
				},
			},
		},
	},
	gopls = {},
	lua_ls = {},
	marksman = {},
	yamlls = require("yaml-companion").setup({
		builtin_matchers = {
			kubernetes = { enabled = true },
		},

		schemas = {
			-- not loaded automatically, manually select with
			-- :Telescope yaml_schema
			{
				name = "Argo CD Application",
				uri = "https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/argoproj.io/application_v1alpha1.json",
			},
		},
		lspconfig = {
			settings = {
				yaml = {
					validate = true,
					schemasStore = {
						enabled = false,
						url = "",
					},
					schemas = require("schemastore").yaml.schemas({
						select = {
							"kustomization.yaml",
							"Renovate",
							"gitlab-ci",
						},
						extra = {
							url = "https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/playbook",
							name = "Ansible Playbook",
							fileMatch = "ansible/*.{yml,yaml}",
						},
					}),
				},
			},
		},
	}),
}

for name, opts in pairs(servers) do
	opts.on_init = configs.on_init
	opts.on_attach = configs.on_attach
	opts.capabilities = configs.capabilities

	require("lspconfig")[name].setup(opts)
end
