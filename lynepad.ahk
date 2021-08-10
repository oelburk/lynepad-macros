#MaxHotkeysPerInterval 1000


; 1. Physical Lynepad layout
;_______________ 
; a   b   c   d |   
; e   f   g   h |   
; i   j   k     |   
;_______________|



; 2. Syntax explanation
;
; a::b 			- This tells AHK to press 'b' when 'a' is pressed.
; a::B 			- This tells AHK to press Shift+b when 'a' is pressed.
; a::^B 		- This tells AHK to press Ctrl+Shift+b when 'a' is pressed.
; a::return		- This tells AHL to not press any key when 'a' is pressed;



; 3. The modifier key
;
; We like to use a modifier key 'i', the left bottom key, to extend the possibilities of lynepad.
; By holding down the modifier you are temporarly switchning to layout 2.
; Without holding it, default layout 1 is used.
; 
; This is done by checking getKeyState("i", "P").



; 4. How to write your own layout
;
; 1. Duplicate existing software layout below (all the defined layouts for the software).
; 2. Change kicad.exe to the name of the process of the software you would like to create the layout for.
; 3. Edit the key mapping in your new copy according to the Syntax explanation section above.



; 5. Start the script automatically
;
; When your script is ready, we recommend putting it into the startup folder so it starts automatically with Windows.  
; To open the folder press Win+R and enter 'shell:startup'





;//// KICAD
;// Layout 1

	#if (WinActive("ahk_exe kicad.exe") && getKeyState("F22", "P") && !getKeyState("i", "P"))
	F22::return

	a::
		sendinput {Esc}
		return
	b::
		sendinput {r}
		return
	c::
		sendinput {m}
		return
	d::
		sendinput {Del}
		return
	e::
		sendinput {v}
		return
	f::
		sendinput {g}
		return
	g::
		sendinput {d}
		return
	h::
		sendinput {x}
		return
	;i:: ;Reserved to temporarly switch to layout 2
	j::
		sendinput {b}
		return
	k::
		sendinput ^{V}
		return


	;ENC2 Tilt DOWN
	l::return			


	;ENC2 Tilt RIGHT
	m::
		sendinput ^{y}
		return


	;ENC2 Tilt UP
	n::return			
	

	;ENC2 Titl LEFT
	o::
		sendinput ^{z}
		return


	;ENC2 press
	p::return


	;ENC1 press			
	q::return			


	;ENC2 rotate LEFT
	r::
		sendinput {W}
		return


	;ENC2 rotate RIGHT		
	s::
		sendinput {w}
		return


	;ENC1 rotate LEFT
	t::
		sendinput {N}
		return	

	;ENC1 rotate RIGHT
	u::
		sendinput ^{N}
		return

;//END Layout 1

;//Layout 2

	#if (WinActive("ahk_exe kicad.exe") && getKeyState("F22", "P") && getKeyState("i", "P"))

	F22::return
	i::return

	a::return
	b::
		sendinput {u}
		return
	c::
		sendinput {i}
		return
	d::
		sendinput {e}
		return
	e::return
	f::return
	g::return
	h::return
	;i:: ;Reserved for switching to this layout
	j::return
	k::return

	;Tilt DOWN
	l::return			
	

	;Tilt RIGHT
	m::return			
	

	;Tilt UP
	n::return			
	

	;Titl LEFT
	o::return			
	

	;ENC2 press
	p::
		sendinput ^{h}
		return	

	;ENC1 press
	q::return			
	

	;ENC2 rotate LEFT
	r::
		sendinput {+}
		return		

	;ENC2 rotate RIGHT
	s::
		sendinput {-}
		return		

	;ENC1 rotate LEFT
	t::return	

	;ENC1 rotate RIGHT
	u::return	

;//END Layout 2
;////END KICAD










;//DO NOT EDIT
;//LEAVE THIS SECTION AT THE BOTTOM OF THIS SCRIPT
;
;This last section of code prevents pressing default lynepad keys (a,b,c,d,...)
;when no layout is defined for the currently active software.
;
	#if (getKeyState("F22", "P"))
	F22::return
	a::return
	b::return
	c::return
	d::return
	e::return
	f::return
	g::return
	h::return
	i::return
	j::return
	k::return
	l::return
	m::return
	n::return
	o::return
	p::return
	q::return
	r::return		
	s::return		
	t::return	
	u::return
;//END
