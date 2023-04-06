local loaded_rosepine, rosepine = pcall(require, 'rose-pine')

if not loaded_rosepine then
  print('Rose-pine not installed')
  return
end

rosepine.setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'auto',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'dawn',
})

-- Set colorscheme after options
vim.cmd('colorscheme rose-pine')
