# ===== Oh My Zsh 設定 =====
export ZSH="$HOME/.oh-my-zsh"

# 主題 (推薦選項: robbyrussell, agnoster, powerlevel10k)
ZSH_THEME="robbyrussell"

# 插件
plugins=(
    git                     # Git 指令補全與別名
    z                       # 智慧目錄跳轉 (依使用頻率)
    zsh-autosuggestions     # 歷史指令自動建議 (灰色提示)
    zsh-syntax-highlighting # 指令語法高亮
    docker                  # Docker 指令補全
    docker-compose          # Docker Compose 補全
    kubectl                 # Kubernetes 補全
    gradle                  # Gradle 補全
    mvn                     # Maven 補全
    extract                 # 萬用解壓指令
    copypath                # 複製當前路徑
    copyfile                # 複製檔案內容
    web-search              # 終端搜尋 (google xxx)
    sudo                    # 雙擊 ESC 加上 sudo
    history                 # 歷史記錄增強
    colored-man-pages       # man 頁面上色
)

source $ZSH/oh-my-zsh.sh

# ===== 基礎設定 =====
export LANG=en_US.UTF-8
export EDITOR=vim
export HISTSIZE=50000
export SAVEHIST=50000

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt AUTO_CD              # 直接輸入目錄名即可進入
setopt CORRECT              # 指令拼寫修正

# ===== 補全增強 =====
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# ===== 快捷鍵 =====
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^ ' autosuggest-accept   # Ctrl+Space 接受建議

# ===== 實用函數 =====
mkcd() { mkdir -p "$1" && cd "$1" }

# 快速查找檔案
ff() { find . -type f -iname "*$1*" }

# 快速查找目錄
fd() { find . -type d -iname "*$1*" }

# ===== Java/Spring 開發 =====
export JAVA_HOME=${JAVA_HOME:-/usr/lib/jvm/java-21-openjdk}
export PATH="$JAVA_HOME/bin:$HOME/.local/bin:$PATH"

# ===== zsh-autosuggestions 設定 =====
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888888"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ===== zsh-syntax-highlighting 設定 =====
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
