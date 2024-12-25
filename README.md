# NeoVim Windows + Linux 

# Cài đặt các gói cần thiết
sudo pacman -S fzf fd neovim lazygit gcc nodejs npm unzip wget  zsh llvm 
ripgrep 

# Cài win32yank-x64 cho Archlinux WSL2.

# Tạo thư mục
mkdir -p ~/.local/bin

# Tải win32yank
wget -O /tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip

# Giải nén
unzip -p /tmp/win32yank.zip win32yank.exe > ~/.local/bin/win32yank.exe

# Cấp quyền thực thi
chmod +x ~/.local/bin/win32yank.exe

# Cài thêm xclip (tùy chọn, để hỗ trợ clipboard)
sudo pacman -S xclip

# Thêm path vào .zshrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

# Reload shell config
source ~/.zshrc
