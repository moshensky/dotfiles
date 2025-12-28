return {
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    opts = {
      ensure_installed = {
        'shellcheck',
        'shfmt',
        'prettier',
        'markdownlint',
        'cspell',
      },
    },
  },
}
