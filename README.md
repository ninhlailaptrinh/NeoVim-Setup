# NeoVim Windows + Linux

# Cài đặt các gói cần thiết

sudo pacman -S fzf fd neovim lazygit gcc nodejs npm unzip wget zsh llvm
ripgrep tmux python-pip python  

--------------------------------------------------------------------------

# Cài đặt package cho python 

cd .config
python -m venv myenv
source myenv/bin/activate
pip install pynvim black pylint pyright flake8 debugpy
deactivate

--------------------------------------------------------------------------

# Cài đặt package cho Nodejs + Npm 

1. mkdir ~/.npm-global
2. npm config set prefix '~/.npm-global'
3. export PATH=~/.npm-global/bin:$PATH
4. source ~/.bashrc   # hoặc `source ~/.zshrc` nếu bạn sử dụng Zsh
5. npm install -g neovim live-server typescript typescript-language-server prettier eslint vscode-langservers-extracted emmet-ls @tailwindcss/language-server


--------------------------------------------------------------------------

# Cài đặt và cấu hình Tmux 
1. git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
2. Trong tmux, nhấn:
3. Ctrl+a (prefix key của bạn)
4. Sau đó nhấn I (shift + i)

# Nếu lỗi cài thủ công 
1. git clone https://github.com/christoomey/vim-tmux-navigator ~/.tmux/plugins/vim-tmux-navigator
2. git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect 
3. git clone https://github.com/tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
4. git clone https://github.com/fabioluciano/tmux-tokyo-night ~/.tmux/plugins/tmux-tokyo-night
5. Trong Tmux nhấn Ctrl+a r hoặc tmux source ~/.tmux.conf
6. Lệnh kiểm tra plugin đã được tải chưa : ls ~/.tmux/plugins/
--------------------------------------------------------------------------

# Cài đặt và cấu hình OH MY ZSH

1. curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
2. git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
3. git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
4. git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

--------------------------------------------------------------------------

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

--------------------------------------------------------------------------

# Cài đặt MSVC BUILD TOOLS 

--------------------------------------------------------------------------



