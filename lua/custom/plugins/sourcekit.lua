return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        sourcekit = {
          cmd = { '/Applications/Xcode_16.3_16E140.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp' },
        },
      },
    },
  },
}
