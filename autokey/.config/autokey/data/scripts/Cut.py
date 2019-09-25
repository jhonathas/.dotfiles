if window.get_active_class() == 'Alacritty.Alacritty':
    keyboard.send_keys("<ctrl>+<shift>+x")
else:
    keyboard.send_keys("<ctrl>+x")
