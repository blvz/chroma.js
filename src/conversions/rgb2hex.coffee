
rgb2hex = (channels, mode='rgb') ->
    [r,g,b,a] = channels
    u = r << 16 | g << 8 | b
    str = "000000" + u.toString(16) #.toUpperCase()
    str = str.substr(str.length - 6)
    hxa = Math.round(a * 255).toString(16)
    "#" + switch mode.toLowerCase()
          when 'rgba' then str + hxa
          when 'argb' then hxa + str
          else str
