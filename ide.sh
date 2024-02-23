#!/bin/bash

# 하단 일정한 높이의 Window를 생성 후 `npm run dev`를 실행합니다.
tmux split-window -v -l 8
tmux send-keys 'npm run dev' Enter
# 하단에 focus되어 있는 것을 다시 원래 위치로 돌립니다.
tmux select-pane -t 0
