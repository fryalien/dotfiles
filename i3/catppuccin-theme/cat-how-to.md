# USAGE

Download the file with your desired flavour e.g. catppuccin-mocha (to be found in the release or after cloning the repository in themes/)

Add theme from .txt files (only set commands).

```
micro ~/.config/i3/config
```

# ===== CAT-MOCHA THEME =====

set $rosewater #f5e0dc
set $flamingo #f2cdcd
set $pink #f5c2e7
set $mauve #cba6f7
set $red #f38ba8
set $maroon #eba0ac
set $peach #fab387
set $yellow #f9e2af
set $green #a6e3a1
set $teal #94e2d5
set $sky #89dceb
set $sapphire #74c7ec
set $blue #89b4fa
set $lavender #b4befe
set $text #cdd6f4
set $subtext1 #bac2de
set $subtext0 #a6adc8
set $overlay2 #9399b2
set $overlay1 #7f849c
set $overlay0 #6c7086
set $surface2 #585b70
set $surface1 #45475a
set $surface0 #313244
set $base #1e1e2e
set $mantle #181825
set $crust #11111b

# target                 title     bg    text   indicator  border
client.focused           $lavender $base $text  $rosewater $lavender
client.focused_inactive  $overlay0 $base $text  $rosewater $overlay0
client.unfocused         $overlay0 $base $text  $rosewater $overlay0
client.urgent            $peach    $base $peach $overlay0  $peach
client.placeholder       $overlay0 $base $text  $overlay0  $overlay0
client.background        $base

# ===== END THEME =====

# bar
bar {
  colors {
    background         $base
    statusline         $text
    focused_statusline $text
    focused_separator  $base

    # target           border bg        text
    focused_workspace  $base  $mauve    $crust
    active_workspace   $base  $surface2 $text
    inactive_workspace $base  $base     $text
    urgent_workspace   $base  $red      $crust
  }
}