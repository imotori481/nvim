local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "<leader>w", "<cmd>write<CR>", { desc = "保存" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "閉じる" })

-- ウィンドウ移動
map("n", "<C-h>", "<C-w>h", { desc = "左のウィンドウへ" })
map("n", "<C-j>", "<C-w>j", { desc = "下のウィンドウへ" })
map("n", "<C-k>", "<C-w>k", { desc = "上のウィンドウへ" })
map("n", "<C-l>", "<C-w>l", { desc = "右のウィンドウへ" })

-- バッファ移動
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "前のバッファ" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "次のバッファ" })

-- 選択範囲の行移動・インデント維持
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "選択行を下へ" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "選択行を上へ" })
map("v", "<", "<gv")
map("v", ">", ">gv")

-- 診断
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "診断を表示" })
map("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "診断をloclistへ" })

-- ターミナル
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "ターミナルノーマルモード" })
