if window.get_active_class() == 'Alacritty.Alacritty':
    keyboard.send_keys("<ctrl>+<shift>+v")
else:
    keyboard.send_keys("<ctrl>+v")
