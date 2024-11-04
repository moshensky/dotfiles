Primary font:
wezterm.font_with_fallback({
  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Regular.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  "JetBrainsMono Nerd Font",

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})


When Intensity=Half Italic=true:
wezterm.font_with_fallback({
  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ExtraLightItalic.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  -- AKA: "JetBrainsMono NF ExtraLight"
  {family="JetBrainsMono Nerd Font", weight="ExtraLight", style="Italic"},

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})


When Intensity=Half Italic=false:
wezterm.font_with_fallback({
  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ExtraLight.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  -- AKA: "JetBrainsMono NF ExtraLight"
  {family="JetBrainsMono Nerd Font", weight="ExtraLight"},

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})


When Intensity=Bold Italic=false:
wezterm.font_with_fallback({
  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-SemiBold.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  -- AKA: "JetBrainsMono NF SemiBold"
  {family="JetBrainsMono Nerd Font", weight="DemiBold"},

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})


When Intensity=Bold Italic=true:
wezterm.font_with_fallback({
  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-SemiBoldItalic.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  -- AKA: "JetBrainsMono NF SemiBold"
  {family="JetBrainsMono Nerd Font", weight="DemiBold", style="Italic"},

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})


When Intensity=Normal Italic=true:
wezterm.font_with_fallback({
  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Italic.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  {family="JetBrainsMono Nerd Font", style="Italic"},

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})

Title font:
wezterm.font_with_fallback({
  -- <built-in>, BuiltIn
  {family="Roboto", weight="Bold"},

  -- /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Regular.ttf, FontConfig
  -- AKA: "JetBrainsMono NF"
  "JetBrainsMono Nerd Font",

  -- <built-in>, BuiltIn
  "JetBrains Mono",

  -- <built-in>, BuiltIn
  -- Assumed to have Emoji Presentation
  "Noto Color Emoji",

  -- <built-in>, BuiltIn
  "Symbols Nerd Font Mono",

})

30 fonts found in your font_dirs + built-in fonts:
wezterm.font("JetBrains Mono", {weight="Thin", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrains Mono Thin) <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrains Mono ExtraLight) <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Light", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrains Mono Light) <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Regular", stretch="Normal", style="Italic"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Medium", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrains Mono Medium) <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="DemiBold", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrains Mono SemiBold) <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="Bold", stretch="Normal", style="Italic"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("JetBrains Mono", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrains Mono ExtraBold) <built-in>, BuiltIn
wezterm.font("Noto Color Emoji", {weight="Regular", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight=250, stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight=250, stretch="Normal", style="Italic"}) -- (AKA: Roboto Thin) <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Light", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Roboto Light) <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Regular", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Regular", stretch="Normal", style="Italic"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Medium", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: Roboto Medium) <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Bold", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Bold", stretch="Normal", style="Italic"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Black", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
wezterm.font("Roboto", {weight="Black", stretch="Normal", style="Italic"}) -- (AKA: Roboto Black) <built-in>, BuiltIn
wezterm.font("Symbols Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- <built-in>, BuiltIn
299 system fonts found using FontConfig:
wezterm.font("Bitstream Charter", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/c0648bt_.pfb, FontConfig
wezterm.font("Bitstream Charter", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/c0649bt_.pfb, FontConfig
wezterm.font("Bitstream Charter", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/c0632bt_.pfb, FontConfig
wezterm.font("Bitstream Charter", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/c0633bt_.pfb, FontConfig
wezterm.font("C059", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/C059-Roman.pfb, FontConfig
wezterm.font("C059", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/C059-Roman.otf, FontConfig
wezterm.font("C059", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/C059-Roman.t1, FontConfig
wezterm.font("C059", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/C059-Italic.pfb, FontConfig
wezterm.font("C059", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/C059-Italic.otf, FontConfig
wezterm.font("C059", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/C059-Italic.t1, FontConfig
wezterm.font("C059", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/C059-Bold.pfb, FontConfig
wezterm.font("C059", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/C059-Bold.otf, FontConfig
wezterm.font("C059", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/C059-Bold.t1, FontConfig
wezterm.font("C059", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/C059-BdIta.pfb, FontConfig
wezterm.font("C059", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/C059-BdIta.otf, FontConfig
wezterm.font("C059", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/C059-BdIta.t1, FontConfig
wezterm.font("Courier 10 Pitch", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/c0419bt_.pfb, FontConfig
wezterm.font("Courier 10 Pitch", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/c0582bt_.pfb, FontConfig
wezterm.font("Courier 10 Pitch", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/c0583bt_.pfb, FontConfig
wezterm.font("Courier 10 Pitch", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/c0611bt_.pfb, FontConfig
wezterm.font("D050000L", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/D050000L.pfb, FontConfig
wezterm.font("D050000L", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/D050000L.otf, FontConfig
wezterm.font("D050000L", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/D050000L.t1, FontConfig
wezterm.font("DejaVu Sans", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/dejavu/DejaVuSans.ttf, FontConfig
wezterm.font("DejaVu Sans", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf, FontConfig
wezterm.font("DejaVu Sans Mono", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf, FontConfig
wezterm.font("DejaVu Sans Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/dejavu/DejaVuSansMono-Bold.ttf, FontConfig
wezterm.font("DejaVu Serif", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf, FontConfig
wezterm.font("DejaVu Serif", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/dejavu/DejaVuSerif-Bold.ttf, FontConfig
wezterm.font("Droid Sans Fallback", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf, FontConfig
wezterm.font("FiraCode Nerd Font", {weight="Light", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFont-Light.ttf, FontConfig
wezterm.font("FiraCode Nerd Font", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFont-Regular.ttf, FontConfig
wezterm.font("FiraCode Nerd Font", {weight=450, stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Ret) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFont-Retina.ttf, FontConfig
wezterm.font("FiraCode Nerd Font", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Med) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFont-Medium.ttf, FontConfig
wezterm.font("FiraCode Nerd Font", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font SemBd) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFont-SemiBold.ttf, FontConfig
wezterm.font("FiraCode Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFont-Bold.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Mono", {weight="Light", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontMono-Light.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontMono-Regular.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Mono", {weight=450, stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Mono Ret) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontMono-Retina.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Mono", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Mono Med) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontMono-Medium.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Mono", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Mono SemBd) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontMono-SemiBold.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontMono-Bold.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Propo", {weight="Light", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontPropo-Light.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Propo", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontPropo-Regular.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Propo", {weight=450, stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Propo Ret) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontPropo-Retina.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Propo", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Propo Med) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontPropo-Medium.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Propo", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: FiraCode Nerd Font Propo SemBd) /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontPropo-SemiBold.ttf, FontConfig
wezterm.font("FiraCode Nerd Font Propo", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/FiraCode/FiraCodeNerdFontPropo-Bold.ttf, FontConfig
wezterm.font("FontAwesome", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/font-awesome/FontAwesome.otf, FontConfig
wezterm.font("FontAwesome", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/font-awesome/fontawesome-webfont.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Thin", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Thin.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ThinItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ExtraLight.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ExtraLightItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Light", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Light.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-LightItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Regular", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Regular.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Regular", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Italic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Medium.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-MediumItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-SemiBold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-SemiBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-Bold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="Bold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-BoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ExtraBold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NF, JetBrainsMono NF ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFont-ExtraBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Thin", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-Thin.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-ThinItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-ExtraLight.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-ExtraLightItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Light", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-Light.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-LightItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-Regular.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Regular", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-Italic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-Medium.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-MediumItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-SemiBold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-SemiBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-Bold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Bold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-BoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-ExtraBold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Mono", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFM, JetBrainsMono NFM ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontMono-ExtraBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Thin", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-Thin.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-ThinItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-ExtraLight.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-ExtraLightItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Light", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-Light.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-LightItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Regular", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-Regular.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Regular", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-Italic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-Medium.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-MediumItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-SemiBold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-SemiBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Bold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-Bold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="Bold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-BoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-ExtraBold.ttf, FontConfig
wezterm.font("JetBrainsMono Nerd Font Propo", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMono NFP, JetBrainsMono NFP ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNerdFontPropo-ExtraBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Thin", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-Thin.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-ThinItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-ExtraLight.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-ExtraLightItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Light", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-Light.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-LightItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Regular", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-Regular.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Regular", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-Italic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-Medium.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-MediumItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-SemiBold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-SemiBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-Bold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Bold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-BoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-ExtraBold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NF, JetBrainsMonoNL NF ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFont-ExtraBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Thin", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Thin.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-ThinItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-ExtraLight.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-ExtraLightItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Light", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Light.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-LightItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Regular.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Regular", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Italic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Medium.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-MediumItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-SemiBold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-SemiBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Bold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Bold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-BoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-ExtraBold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFM, JetBrainsMonoNL NFM ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontMono-ExtraBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Thin", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-Thin.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP Thin) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-ThinItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-ExtraLight.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP ExtraLight) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-ExtraLightItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Light", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-Light.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP Light) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-LightItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Regular", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-Regular.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Regular", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-Italic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Medium", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-Medium.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP Medium) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-MediumItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="DemiBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-SemiBold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP SemiBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-SemiBoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Bold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-Bold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="Bold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-BoldItalic.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-ExtraBold.ttf, FontConfig
wezterm.font("JetBrainsMonoNL Nerd Font Propo", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: JetBrainsMonoNL NFP, JetBrainsMonoNL NFP ExtraBold) /usr/share/fonts/truetype/JetBrainsMono/JetBrainsMonoNLNerdFontPropo-ExtraBoldItalic.ttf, FontConfig
wezterm.font("Lato", {weight="Thin", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Hairline.ttf, FontConfig
wezterm.font("Lato", {weight="Thin", stretch="Normal", style="Italic"}) -- (AKA: Lato Hairline) /usr/share/fonts/truetype/lato/Lato-HairlineItalic.ttf, FontConfig
wezterm.font("Lato", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Thin.ttf, FontConfig
wezterm.font("Lato", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Lato Thin) /usr/share/fonts/truetype/lato/Lato-ThinItalic.ttf, FontConfig
wezterm.font("Lato", {weight="Light", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Light.ttf, FontConfig
wezterm.font("Lato", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Lato Light) /usr/share/fonts/truetype/lato/Lato-LightItalic.ttf, FontConfig
wezterm.font("Lato", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Regular.ttf, FontConfig
wezterm.font("Lato", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/lato/Lato-Italic.ttf, FontConfig
wezterm.font("Lato", {weight="Medium", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Medium.ttf, FontConfig
wezterm.font("Lato", {weight="Medium", stretch="Normal", style="Italic"}) -- (AKA: Lato Medium) /usr/share/fonts/truetype/lato/Lato-MediumItalic.ttf, FontConfig
wezterm.font("Lato", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Semibold.ttf, FontConfig
wezterm.font("Lato", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Lato Semibold) /usr/share/fonts/truetype/lato/Lato-SemiboldItalic.ttf, FontConfig
wezterm.font("Lato", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Bold.ttf, FontConfig
wezterm.font("Lato", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/lato/Lato-BoldItalic.ttf, FontConfig
wezterm.font("Lato", {weight="ExtraBold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Heavy.ttf, FontConfig
wezterm.font("Lato", {weight="ExtraBold", stretch="Normal", style="Italic"}) -- (AKA: Lato Heavy) /usr/share/fonts/truetype/lato/Lato-HeavyItalic.ttf, FontConfig
wezterm.font("Lato", {weight="Black", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/lato/Lato-Black.ttf, FontConfig
wezterm.font("Lato", {weight="Black", stretch="Normal", style="Italic"}) -- (AKA: Lato Black) /usr/share/fonts/truetype/lato/Lato-BlackItalic.ttf, FontConfig
wezterm.font("Liberation Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/liberation2/LiberationMono-Regular.ttf, FontConfig
wezterm.font("Liberation Mono", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/liberation2/LiberationMono-Italic.ttf, FontConfig
wezterm.font("Liberation Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/liberation2/LiberationMono-Bold.ttf, FontConfig
wezterm.font("Liberation Mono", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/liberation2/LiberationMono-BoldItalic.ttf, FontConfig
wezterm.font("Liberation Sans", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/liberation2/LiberationSans-Regular.ttf, FontConfig
wezterm.font("Liberation Sans", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/liberation2/LiberationSans-Italic.ttf, FontConfig
wezterm.font("Liberation Sans", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/liberation2/LiberationSans-Bold.ttf, FontConfig
wezterm.font("Liberation Sans", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/liberation2/LiberationSans-BoldItalic.ttf, FontConfig
wezterm.font("Liberation Serif", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/liberation2/LiberationSerif-Regular.ttf, FontConfig
wezterm.font("Liberation Serif", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/liberation2/LiberationSerif-Italic.ttf, FontConfig
wezterm.font("Liberation Serif", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/liberation2/LiberationSerif-Bold.ttf, FontConfig
wezterm.font("Liberation Serif", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/truetype/liberation2/LiberationSerif-BoldItalic.ttf, FontConfig
wezterm.font("MathJax_AMS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_AMS-Regular.otf, FontConfig
wezterm.font("MathJax_Caligraphic", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Caligraphic-Regular.otf, FontConfig
wezterm.font("MathJax_Caligraphic", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Caligraphic-Bold.otf, FontConfig
wezterm.font("MathJax_Fraktur", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Fraktur-Regular.otf, FontConfig
wezterm.font("MathJax_Fraktur", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Fraktur-Bold.otf, FontConfig
wezterm.font("MathJax_Main", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Main-Regular.otf, FontConfig
wezterm.font("MathJax_Main", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Main-Italic.otf, FontConfig
wezterm.font("MathJax_Main", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Main-Bold.otf, FontConfig
wezterm.font("MathJax_Math", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Math-Regular.otf, FontConfig
wezterm.font("MathJax_Math", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Math-Italic.otf, FontConfig
wezterm.font("MathJax_Math", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Math-BoldItalic.otf, FontConfig
wezterm.font("MathJax_SansSerif", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_SansSerif-Regular.otf, FontConfig
wezterm.font("MathJax_SansSerif", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/mathjax/MathJax_SansSerif-Italic.otf, FontConfig
wezterm.font("MathJax_SansSerif", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_SansSerif-Bold.otf, FontConfig
wezterm.font("MathJax_Script", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Script-Regular.otf, FontConfig
wezterm.font("MathJax_Size1", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Size1-Regular.otf, FontConfig
wezterm.font("MathJax_Size2", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Size2-Regular.otf, FontConfig
wezterm.font("MathJax_Size3", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Size3-Regular.otf, FontConfig
wezterm.font("MathJax_Size4", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Size4-Regular.otf, FontConfig
wezterm.font("MathJax_Typewriter", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Typewriter-Regular.otf, FontConfig
wezterm.font("MathJax_Vector", {weight="Medium", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Vector-Regular.otf, FontConfig
wezterm.font("MathJax_Vector-Bold", {weight="Medium", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_Vector-Bold.otf, FontConfig
wezterm.font("MathJax_WinChrome", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_WinChrome-Regular.otf, FontConfig
wezterm.font("MathJax_WinIE6", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/mathjax/MathJax_WinIE6-Regular.otf, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusMonoPS-Regular.pfb, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusMonoPS-Regular.otf, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusMonoPS-Regular.t1, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/NimbusMonoPS-Italic.pfb, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/NimbusMonoPS-Italic.otf, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/NimbusMonoPS-Italic.t1, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusMonoPS-Bold.pfb, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusMonoPS-Bold.otf, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusMonoPS-Bold.t1, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/NimbusMonoPS-BoldItalic.pfb, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/NimbusMonoPS-BoldItalic.otf, FontConfig
wezterm.font("Nimbus Mono PS", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/NimbusMonoPS-BoldItalic.t1, FontConfig
wezterm.font("Nimbus Roman", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusRoman-Regular.pfb, FontConfig
wezterm.font("Nimbus Roman", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusRoman-Regular.otf, FontConfig
wezterm.font("Nimbus Roman", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusRoman-Regular.t1, FontConfig
wezterm.font("Nimbus Roman", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/NimbusRoman-Italic.pfb, FontConfig
wezterm.font("Nimbus Roman", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/NimbusRoman-Italic.otf, FontConfig
wezterm.font("Nimbus Roman", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/NimbusRoman-Italic.t1, FontConfig
wezterm.font("Nimbus Roman", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusRoman-Bold.pfb, FontConfig
wezterm.font("Nimbus Roman", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusRoman-Bold.otf, FontConfig
wezterm.font("Nimbus Roman", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusRoman-Bold.t1, FontConfig
wezterm.font("Nimbus Roman", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/NimbusRoman-BoldItalic.pfb, FontConfig
wezterm.font("Nimbus Roman", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/NimbusRoman-BoldItalic.otf, FontConfig
wezterm.font("Nimbus Roman", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/NimbusRoman-BoldItalic.t1, FontConfig
wezterm.font("Nimbus Sans", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusSans-Regular.pfb, FontConfig
wezterm.font("Nimbus Sans", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSans-Regular.otf, FontConfig
wezterm.font("Nimbus Sans", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusSans-Regular.t1, FontConfig
wezterm.font("Nimbus Sans", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/NimbusSans-Italic.pfb, FontConfig
wezterm.font("Nimbus Sans", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSans-Italic.otf, FontConfig
wezterm.font("Nimbus Sans", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/NimbusSans-Italic.t1, FontConfig
wezterm.font("Nimbus Sans", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusSans-Bold.pfb, FontConfig
wezterm.font("Nimbus Sans", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSans-Bold.otf, FontConfig
wezterm.font("Nimbus Sans", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusSans-Bold.t1, FontConfig
wezterm.font("Nimbus Sans", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/NimbusSans-BoldItalic.pfb, FontConfig
wezterm.font("Nimbus Sans", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSans-BoldItalic.otf, FontConfig
wezterm.font("Nimbus Sans", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/NimbusSans-BoldItalic.t1, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Regular", stretch="SemiCondensed", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSansNarrow-Regular.otf, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Regular", stretch="SemiCondensed", style="Oblique"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSansNarrow-Oblique.otf, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Bold", stretch="SemiCondensed", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSansNarrow-Bold.otf, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Bold", stretch="SemiCondensed", style="Oblique"}) -- /usr/share/fonts/opentype/urw-base35/NimbusSansNarrow-BoldOblique.otf, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusSansNarrow-Regular.pfb, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusSansNarrow-Regular.t1, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Regular", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/X11/Type1/NimbusSansNarrow-Oblique.pfb, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Regular", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/type1/urw-base35/NimbusSansNarrow-Oblique.t1, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/NimbusSansNarrow-Bold.pfb, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/NimbusSansNarrow-Bold.t1, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Bold", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/X11/Type1/NimbusSansNarrow-BoldOblique.pfb, FontConfig
wezterm.font("Nimbus Sans Narrow", {weight="Bold", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/type1/urw-base35/NimbusSansNarrow-BoldOblique.t1, FontConfig
wezterm.font("Noto Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/noto/NotoMono-Regular.ttf, FontConfig
wezterm.font("Noto Sans Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/noto/NotoSansMono-Regular.ttf, FontConfig
wezterm.font("Noto Sans Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/noto/NotoSansMono-Bold.ttf, FontConfig
wezterm.font("OpenSymbol", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/libreoffice/opens___.ttf, FontConfig
wezterm.font("P052", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/P052-Roman.pfb, FontConfig
wezterm.font("P052", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/P052-Roman.otf, FontConfig
wezterm.font("P052", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/P052-Roman.t1, FontConfig
wezterm.font("P052", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/P052-Italic.pfb, FontConfig
wezterm.font("P052", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/P052-Italic.otf, FontConfig
wezterm.font("P052", {weight="Regular", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/P052-Italic.t1, FontConfig
wezterm.font("P052", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/P052-Bold.pfb, FontConfig
wezterm.font("P052", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/P052-Bold.otf, FontConfig
wezterm.font("P052", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/P052-Bold.t1, FontConfig
wezterm.font("P052", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/P052-BoldItalic.pfb, FontConfig
wezterm.font("P052", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/P052-BoldItalic.otf, FontConfig
wezterm.font("P052", {weight="Bold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/P052-BoldItalic.t1, FontConfig
wezterm.font("Quicksand", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/quicksand/Quicksand-Regular.ttf, FontConfig
wezterm.font("Quicksand", {weight="Bold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/quicksand/Quicksand-Bold.ttf, FontConfig
wezterm.font("Quicksand Light", {weight="Light", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/quicksand/Quicksand-Light.ttf, FontConfig
wezterm.font("Quicksand Medium", {weight="Medium", stretch="Normal", style="Normal"}) -- /usr/share/fonts/truetype/quicksand/Quicksand-Medium.ttf, FontConfig
wezterm.font("Standard Symbols PS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/StandardSymbolsPS.pfb, FontConfig
wezterm.font("Standard Symbols PS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/StandardSymbolsPS.otf, FontConfig
wezterm.font("Standard Symbols PS", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/StandardSymbolsPS.t1, FontConfig
wezterm.font("Symbola", {weight="Regular", stretch="SemiCondensed", style="Normal"}) -- /usr/share/fonts/truetype/ancient-scripts/Symbola_hint.ttf, FontConfig
wezterm.font("URW Bookman", {weight="Light", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/URWBookman-Light.otf, FontConfig
wezterm.font("URW Bookman", {weight="Light", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/URWBookman-LightItalic.otf, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/URWBookman-Demi.pfb, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/URWBookman-Light.pfb, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/URWBookman-Demi.t1, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/URWBookman-Light.t1, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/URWBookman-DemiItalic.pfb, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/URWBookman-LightItalic.pfb, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/URWBookman-DemiItalic.t1, FontConfig
wezterm.font("URW Bookman", {weight="Book", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/URWBookman-LightItalic.t1, FontConfig
wezterm.font("URW Bookman", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/URWBookman-Demi.otf, FontConfig
wezterm.font("URW Bookman", {weight="DemiBold", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/URWBookman-DemiItalic.otf, FontConfig
wezterm.font("URW Gothic", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/URWGothic-Book.pfb, FontConfig
wezterm.font("URW Gothic", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/URWGothic-Book.otf, FontConfig
wezterm.font("URW Gothic", {weight="Book", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/URWGothic-Book.t1, FontConfig
wezterm.font("URW Gothic", {weight="Book", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/X11/Type1/URWGothic-BookOblique.pfb, FontConfig
wezterm.font("URW Gothic", {weight="Book", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/opentype/urw-base35/URWGothic-BookOblique.otf, FontConfig
wezterm.font("URW Gothic", {weight="Book", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/type1/urw-base35/URWGothic-BookOblique.t1, FontConfig
wezterm.font("URW Gothic", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/X11/Type1/URWGothic-Demi.pfb, FontConfig
wezterm.font("URW Gothic", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/type1/urw-base35/URWGothic-Demi.t1, FontConfig
wezterm.font("URW Gothic", {weight="Regular", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/X11/Type1/URWGothic-DemiOblique.pfb, FontConfig
wezterm.font("URW Gothic", {weight="Regular", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/type1/urw-base35/URWGothic-DemiOblique.t1, FontConfig
wezterm.font("URW Gothic", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /usr/share/fonts/opentype/urw-base35/URWGothic-Demi.otf, FontConfig
wezterm.font("URW Gothic", {weight="DemiBold", stretch="Normal", style="Oblique"}) -- /usr/share/fonts/opentype/urw-base35/URWGothic-DemiOblique.otf, FontConfig
wezterm.font("Z003", {weight="Medium", stretch="Normal", style="Italic"}) -- /usr/share/fonts/X11/Type1/Z003-MediumItalic.pfb, FontConfig
wezterm.font("Z003", {weight="Medium", stretch="Normal", style="Italic"}) -- /usr/share/fonts/opentype/urw-base35/Z003-MediumItalic.otf, FontConfig
wezterm.font("Z003", {weight="Medium", stretch="Normal", style="Italic"}) -- /usr/share/fonts/type1/urw-base35/Z003-MediumItalic.t1, FontConfig

