# 配置

vi ~/.zshrc 

```
for conf in ~/.config/zsh/*.zsh; do
    [[ -f "$conf" ]] && source "$conf"
done
```

## 把專案放在

~/.config/zsh內

## 安裝plugin

1. install: https://github.com/ohmyzsh/ohmyzsh

2. install belowing plugin
   
```shell
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
