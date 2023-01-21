sample :vinyl_backspin, attack: 0.5, sustain: 1, release: 1
live_loop :lofi_beat_low do
  use_bpm 70
  with_fx :reverb do
    sample :bd_boom  ; sleep 0.5
    sample :bd_boom  ; sleep 0.5
    sample :bd_boom  ; sleep 1
    sample :bd_boom  ; sleep 0.25
    sample :bd_boom  ; sleep 0.5
    sample :bd_boom  ; sleep 0.5
    sample :bd_boom  ; sleep 0.5
  end
  sleep 1
end

live_loop :lofi_beat_middle do sync :lofi_beat_low
  use_bpm 70
  sample :drum_tom_mid_soft; sleep 0.75
  sample :drum_tom_mid_soft; sleep 0.75
  sample :drum_tom_hi_soft; sleep 1.25
  sleep 1
end

live_loop :lofi_hi do sync :lofi_beat_middle
  use_bpm 140
  sample :vinyl_hiss, attack: 0.5, sustain: 1, amp: 1.5
  sample :drum_cymbal_closed ; sleep 1
  sample :drum_cymbal_pedal ; sleep 1
  sleep 1
end

live_loop :lofi_fx do sync :lofi_hi
  use_bpm 140
  with_fx :bitcrusher do
    sample :tabla_tun2; sleep 1.5
    sleep 1.5
  end
end

live_loop :lofi_fx_trappy_loop do sync :lofi_beat_middle
  # with_fx :bitcrusher do
  # Raspberry Pi, Mac, Linux
  sample "/Users/PC/Desktop/samples/trap-drum-loop_140bpm_G#_major.wav", amp: 0.5
  #end
end

live_loop :lofi_tremolos do sync :lofi_fx_trappy_loop
  2.times do
    # Raspberry Pi, Mac, Linux
    sample "/Users/PC/Desktop/samples/ballroom-keys-note-a_A_minor.wav",
      attack: 0.5, sustain: 1, amp: 0.5
    sleep 0.25
  end
  # Raspberry Pi, Mac, Linux
  sample "/Users/PC/Desktop/samples/ballroom-keys-note-a_A_minor.wav",
    attack: 0.5, sustain: 1, amp: 0.5
  sleep 0.25
  with_fx :tremolo do
    # Raspberry Pi, Mac, Linux
    sample "/Users/PC/Desktop/samples/ballroom-keys-note-c_C_minor.wav",
      attack: 0.5, sustain: 1, amp: 0.5
  end
  sleep 8
end


live_loop :lofi_piano do sync :lofi_tremolos
  with_fx :whammy do
    # Raspberry Pi, Mac, Linux
    sample "/Users/PC/Desktop/samples/piano-lo-fi-loop-old-noted_70bpm_A#_major.wav",
      attack: 0.5, sustain: 8, release: 8, amp: 1
  end
end

live_loop :lofi_vinyl_voices_fx do sync :lofi_piano
  with_fx :wobble do
    sample :vinyl_backspin, attack: 0.5, sustain: 1, release: 1, rate: -1, amp: 0.5
  end
  sleep 16
end














