; Remap Right Alt + W, A, S, D to Arrow Keys
#Requires AutoHotkey v2.0

RAlt & w::Send("{Up}")
RAlt & a::Send("{Left}")
RAlt & s::Send("{Down}")
RAlt & d::Send("{Right}")
