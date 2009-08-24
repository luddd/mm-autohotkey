#SingleInstance, force

	;=========== SETUP ========
		w := 500
		h := 600
		sep := 8
	;==========================

	w1 := w//3, w2 := w-w1
	gui, margin, 0, 0
	Gui, +Resize

	gui, add, edit, HWNDhc1 w%w1% h%h%
	hSep := Splitter_Add( "x+0 h" h " w" sep)
	gui, add, monthcal, HWNDhc2 w%w2% h%h% x+0
			Splitter_Set( hSep, hc1 " | " hc2 )

	gui, show, w%w% h%h%
		
return

Esc:: 
GuiClose:
	ExitApp
return

#include Splitter.ahk


GuiSize:

	Anchor(hc1, "hw"	)
	Anchor(hc2, "xh"	)
	Anchor(hSep,"xh")
return
