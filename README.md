# Pioneer DDJ-SX — Reason Remote Codec (partial)

Deprecated, **partially complete** Reason Remote files (Lua codec + remote map) for the Pioneer DDJ-SX DJ controller. The mapping is limited, but the codec already defines the DDJ-SX's mixer section, so it could be developed further. No longer in development; kept here as an archive and as a starting point.

The codec and map are my own work. Feel free to fork it and build on it.

## What the codec defines

All controls are input-only (no LED feedback yet):

| Control | MIDI |
|---------|------|
| Deck 1 / 2 Tempo slider | CC 0 on channels 1 / 2 (inverted) |
| Deck 1 / 2 Play, Stop | Notes 11 / 12 on channels 1 / 2 |
| Channel 1–4 EQ Hi / Mid / Low | CC 7 / 11 / 15 on channels 1–4 |
| Channel 1–4 Trim | CC 4 on channels 1–4 |
| Channel 1–4 Fader | CC 19 on channels 1–4 |
| Channel 1–4 Filter | CC 23–26 on channel 7 |
| Crossfader | CC 31 on channel 7 |

A commented-out "Master BPM" item shows an idea for driving Reason's tempo from the deck tempo sliders.

## What is mapped

| DDJ-SX (channel 1 strip) | Combinator | Main Mixer Channel |
|--------------------------|------------|--------------------|
| EQ Low | Rotary 1 | Rotary 1 |
| EQ Mid | Rotary 2 | Rotary 2 |
| EQ Hi | Rotary 3 | Rotary 3 |
| Filter | Rotary 4 | Rotary 4 |
| Fader | Rotary 5 | Rotary 5 |
| Trim | Rotary 6 | Rotary 6 |

The Reason Document scope (transport and tempo from deck 1) is present but commented out. Everything else (channels 2–4, crossfader, decks) is defined in the codec but not mapped.

## Ideas for developing it

- Map channels 2–4 and the crossfader, e.g. to Reason's Main Mixer (Reason Master Section scope).
- Enable the Reason Document lines for Play/Stop, or finish the Master BPM idea.
- Add LED outputs for Play/Stop and other buttons, and the rest of the DDJ-SX's controls (jog wheels, performance pads, FX section).
- Add a surface picture: the `.luacodec` refers to `Pioneer DDJ-SX.png`, which isn't included.

## Install

1. Copy `Pioneer DDJ-SX.luacodec` and `Pioneer DDJ-SX.lua` to the `Remote/Codecs/Lua Codecs/Pioneer/` folder.
2. Copy `Pioneer DDJ-SX.remotemap` to the `Remote/Maps/Pioneer/` folder.
3. Restart Reason, then add the surface manually in Preferences → Control Surfaces (Manufacturer: Pioneer, Model: DDJ-SX).

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.

## Licence

MIT — see `LICENSE`.
