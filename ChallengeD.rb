
live_loop:s do
  use_synth :bass_foundation
  play :e2, amp: 0.5
  sleep 4
  play :e2, amp: 0.5
  play :e3, amp: 0.5
  sleep 4
  live_loop:background_notes do
    use_synth :chipbass
    play:E3, amp: 0.25
    sleep 1
    play:B3, amp: 0.25
    play:E4, amp: 0.25
    sleep 1
    play:B3, amp: 0.25
    sleep 1
    play:E4, amp: 0.25
    sleep 1
    
    play:E3, amp: 0.5
    sleep 1
    play:B3, amp: 0.5
    play:E4, amp: 0.5
    sleep 1
    play:B3, amp: 0.5
    sleep 1
    play:E4, amp: 0.5
    sleep 1
    
    play:E3, amp: 0.75
    sleep 1
    play:B3, amp: 0.75
    play:E4, amp: 0.75
    sleep 1
    play:B3, amp: 0.75
    sleep 1
    play:E4, amp: 0.75
    sleep 1
    
    5.times do
      use_synth :chipbass
      play:E3, amp: 1
      sleep 1
      play:B3, amp: 1
      play:E4, amp: 1
      sleep 1
      play:B3, amp: 1
      sleep 1
      play:E4, amp: 1
      sleep 1
    end
    stop
  end
  
  use_synth :chipbass
  # Measure 1
  play :r
  sleep 1
  play:E4
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
  
  # Measure 2
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
  
  # Measure 3
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
  
  # Measure 4
  2. times do
    play :r
    sleep 1
    play:E5
    play:Gs4
    play:B4
    sleep 1
    play:B4
    sleep 1
    play:E5
    play:Gs4
    sleep 1
    
    # Measure 5
    use_synth :chipbass
    play:B4
    sleep 0.75
    play:As4
    sleep 0.25
    play:Gs4
    play:B4
    sleep 0.75
    play:Cs5
    sleep 0.25
    play:B4
    sleep 1
    play:Gs4
    play:E5
    sleep 1
  end
  
  
  # Measure 8
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
  
  stop
end
