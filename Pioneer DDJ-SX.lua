function remote_init()
	local items={

--		{name="Deck 1 Master BPM", input="value", min=1000, max=999999},
--		{name="Deck 2 Master BPM", input="value", min=1000, max=999999},

		{name="Deck 1 Tempo", input="value", min=0, max=127},
		{name="Deck 2 Tempo", input="value", min=0, max=127},
		
		{name="Deck 1 Play", input="button", output="value"},
		{name="Deck 1 Stop", input="button", output="value"},
				
		{name="Deck 2 Play", input="button", output="value"},
		{name="Deck 2 Stop", input="button", output="value"},
		
		{name="Channel 1 EQ Hi", input="value", min=0, max=127},
		{name="Channel 1 EQ Mid", input="value", min=0, max=127},
		{name="Channel 1 EQ Low", input="value", min=0, max=127},
		{name="Channel 1 Filter", input="value", min=0, max=127},		

		{name="Channel 2 EQ Hi", input="value", min=0, max=127},
		{name="Channel 2 EQ Mid", input="value", min=0, max=127},
		{name="Channel 2 EQ Low", input="value", min=0, max=127},
		{name="Channel 2 Filter", input="value", min=0, max=127},

		{name="Channel 3 EQ Hi", input="value", min=0, max=127},
		{name="Channel 3 EQ Mid", input="value", min=0, max=127},
		{name="Channel 3 EQ Low", input="value", min=0, max=127},
		{name="Channel 3 Filter", input="value", min=0, max=127},

		{name="Channel 4 EQ Hi", input="value", min=0, max=127},
		{name="Channel 4 EQ Mid", input="value", min=0, max=127},
		{name="Channel 4 EQ Low", input="value", min=0, max=127},
		{name="Channel 4 Filter", input="value", min=0, max=127},
				
				
		{name="Channel 1 Fader", input="value", min=0, max=127},
		{name="Channel 2 Fader", input="value", min=0, max=127},
		{name="Channel 3 Fader", input="value", min=0, max=127},
		{name="Channel 4 Fader", input="value", min=0, max=127},

		{name="Crossfader", input="value", min=0, max=127},
		
		{name="Channel 1 Trim", input="value", min=0, max=127},
		{name="Channel 2 Trim", input="value", min=0, max=127},
		{name="Channel 3 Trim", input="value", min=0, max=127},
		{name="Channel 4 Trim", input="value", min=0, max=127},
		

			}
	remote.define_items(items)

	local inputs={

-- PITCH BEND CALC IS FOR REASON MASTER TEMPO
--		{pattern="b0 00 xx", name="Deck 1 Master BPM", value="121800+(x/20)*1000"},
--		{pattern="b1 00 xx", name="Deck 2 Master BPM", value="121800+(x/20)*1000"},


		{pattern="b0 00 xx", name="Deck 1 Tempo", value="(0-x)+128"},
		{pattern="b1 00 xx", name="Deck 2 Tempo", value="(0-x)+128"},

		{pattern="90 0B 7F", name="Deck 1 Play", value="1"},
		{pattern="90 0C ?<???x>", name="Deck 1 Stop", value="1"},

		{pattern="91 0B 7F", name="Deck 2 Play", value="1"},
		{pattern="91 0C ?<???x>", name="Deck 2 Stop", value="1"},

		{pattern="b2 07 xx", name="Channel 3 EQ Hi"},
		{pattern="b2 0B xx", name="Channel 3 EQ Mid"},
		{pattern="b2 0F xx", name="Channel 3 EQ Low"},
		{pattern="b6 19 xx", name="Channel 3 Filter"},
		
		{pattern="b0 07 xx", name="Channel 1 EQ Hi"},
		{pattern="b0 0B xx", name="Channel 1 EQ Mid"},
		{pattern="b0 0F xx", name="Channel 1 EQ Low"},
		{pattern="b6 17 xx", name="Channel 1 Filter"},
		
		{pattern="b1 07 xx", name="Channel 2 EQ Hi"},
		{pattern="b1 0B xx", name="Channel 2 EQ Mid"},
		{pattern="b1 0F xx", name="Channel 2 EQ Low"},
		{pattern="b6 18 xx", name="Channel 2 Filter"},

		{pattern="b3 07 xx", name="Channel 4 EQ Hi"},
		{pattern="b3 0B xx", name="Channel 4 EQ Mid"},
		{pattern="b3 0F xx", name="Channel 4 EQ Low"},
		{pattern="b6 1A xx", name="Channel 4 Filter"},
		
		{pattern="b2 13 xx", name="Channel 3 Fader"},
		{pattern="b0 13 xx", name="Channel 1 Fader"},
		{pattern="b1 13 xx", name="Channel 2 Fader"},
		{pattern="b3 13 xx", name="Channel 4 Fader"},
		
		{pattern="b6 1F xx", name="Crossfader"},
				
		{pattern="b2 04 xx", name="Channel 3 Trim"},
		{pattern="b0 04 xx", name="Channel 1 Trim"},
		{pattern="b1 04 xx", name="Channel 2 Trim"},
		{pattern="b3 04 xx", name="Channel 4 Trim"},
		

	}
	remote.define_auto_inputs(inputs)
	
  		local outputs={
  		
		}
        

		remote.define_auto_outputs(outputs)      	
	
	
end


function remote_probe()

	local controlRequest="F0 7E 7F 06 01 F7"

	local controlResponse="F0 7E 00 06 02 47 6C 00 19 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? F7"
return {
		request=controlRequest,
		response=controlResponse
	}
end

