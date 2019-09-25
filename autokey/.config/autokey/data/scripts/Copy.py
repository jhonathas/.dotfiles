if window.get_active_class() == 'Alacritty.Alacritty':
    keyboard.send_keys("<ctrl>+<shift>+c")
else:
    keyboard.send_keys("<ctrl>+c")
