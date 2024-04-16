use_bpm 150
s = 1
s2 = 2
s3 = 0.5
s4 = 1/3

define :chorusbell do |x1, x2, x3, x4|
  use_synth :pretty_bell
  a  = 0.1
  s = 1.25
  play x1, amp: a, sustain: s
  sleep 1
  play x2, amp: a, sustain: s
  sleep 1
  play x2, amp: a, sustain: s
  sleep 1
  play x3, amp: a, sustain: s
  sleep 1
  play x3, amp: a, sustain: s
  sleep 1
  play x4, amp: a, sustain: s
  sleep 3
end

define :padnotes do |p1, p2, p3, p4, p5, ps6|
  use_synth :tri
  psa = 0.1
  psust = 2
  with_fx :reverb do
    play p1, sustain: psust, amp: psa, attack: 0.75
    play p2, sustain: psust, amp: psa, attack: 0.75
    play p3, sustain: psust, amp: psa, attack: 0.75
    play p4, sustain: psust, amp: psa, attack: 0.75
    play p5, sustain: psust, amp: psa, attack: 0.75
    sleep ps6
  end
end

define :intro do
  live_loop :intron do
    d = 0.4
    rls = 0.6
    am = 1.2
    at = 0.2
    use_synth :sine
    7. times do
      with_fx :reverb, mix: 0.6 do
        2. times do
          play :e2, attack: at, decay: d, release: rls, amp: am
          sleep 0.5
          play :g3, decay: d,release: rls, amp: am
          sleep 0.5
          play :b3, decay: d, release: rls, amp: am
          sleep 0.5
          play :e2, decay: d, release: rls, amp: am
          sleep 0.5
          play :fs4, decay: d, release: rls, amp: am
          sleep 2
        end
        2. times do
          play :a2, decay: d, release: rls, amp: am
          sleep 0.5
          play :g3, decay: d, release: rls, amp: am
          sleep 0.5
          play :b3, decay: d, release: rls, amp: am
          sleep 0.5
          play :a2, decay: d, release: rls, amp: am
          sleep 0.5
          play :fs4, decay: d, release: rls, amp: am
          sleep 2
        end
        
        3. times do
          play :d2, decay: d, release: rls, amp: am
          sleep 0.5
          play :d4, decay: d, release: rls, amp: am
          sleep 0.5
          play :cs4, decay: d, release: rls, amp: am
          sleep 0.5
          play :d2, decay: d, release: rls, amp: am
          sleep 0.5
          play :fs3, decay: d, release: rls, amp: am
          sleep 2
        end
        
        play :d2, decay: d, release: rls, amp: am
        sleep 0.5
        play :d4, decay: d, release: rls, amp: am
        sleep 0.5
        play :cs4, decay: d, release: rls, amp: am
        sleep 0.5
        play :ds2, decay: d, release: rls, amp: am
        sleep 0.5
        play :fs4, decay: d, release: rls, amp: am
        sleep 1
        play :ds4, decay: d, release: rls, amp: am
        sleep 0.5
        play :a3, decay: d, release: rls, amp: am
        sleep 0.5
      end
    end
    stop
  end
end
#--------------------------------------------- music starts here ---------------------------------------------------


intro
with_fx :octaver do
  intro
end
live_loop :cymballl do
  with_fx :reverb do
    2. times do
      sleep 32
      sample :drum_cymbal_hard, beat_stretch: 4, amp: 0.2
      sample :drum_cymbal_closed, beat_stretch: 4, amp: 0.2
      sample :drum_splash_hard, beat_stretch: 4, amp: 0.2
      sample :drum_heavy_kick, beat_stretch: 4, amp: 0.3
    end
    sleep 64
    sample :drum_cymbal_hard, beat_stretch: 4, amp: 0.2
    sample :drum_cymbal_closed, beat_stretch: 4, amp: 0.2
    sample :drum_splash_hard, beat_stretch: 4, amp: 0.2
    sample :drum_heavy_kick, beat_stretch: 4, amp: 0.3
    stop
  end
end
sleep 32





kicksleep = [1.5, 1.5, 6, 0.5, 2.5, 1, 3]

dks = 0
live_loop :kickloop do
  5.times do
    print ("kickloop")
    7.times do
      sample :drum_heavy_kick
      sleep kicksleep[dks]
      dks = dks + 1
    end
    dks = 0
  end
  
  live_loop :snapll do
    4.times do
      with_fx :reverb do
        sleep 4
        sample :perc_snap2, amp: 0.05
      end
    end
    stop
  end
  
  sleep 16
  2.times do
    7.times do
      sample :drum_heavy_kick, amp: 1
      sleep kicksleep[dks]
      dks = dks + 1
    end
    dks = 0
  end
  sleep 16
  2.times do
    7.times do
      sample :drum_heavy_kick, amp: 1
      sleep kicksleep[dks]
      dks = dks + 1
    end
    dks = 0
  end
  5.times do
    sample :drum_heavy_kick, amp: 1
    sleep kicksleep[dks]
    dks = dks + 1
  end
  stop
end


live_loop :snd do
  with_fx :reverb do
    2. times do
      8. times do
        sleep 2
        sample :snare_drum_hard, beat_stretch: 2, amp: 0.3
        sample :sn_generic, beat_stretch: 2, amp: 0.2
        sample :perc_impact_1, beat_stretch: 2, amp: 0.1
        sleep 2
      end
    end
    4. times do
      sleep 2
      sample :snare_drum_hard, beat_stretch: 2, amp: 0.3
      sample :sn_generic, beat_stretch: 2, amp: 0.2
      sample :perc_impact_1, beat_stretch: 2, amp: 0.1
      sleep 2
    end
    
    sleep 16
    2. times do
      8. times do
        sleep 2
        sample :snare_drum_hard, beat_stretch: 2, amp: 0.3
        sample :sn_generic, beat_stretch: 2, amp: 0.2
        sample :perc_impact_1, beat_stretch: 2, amp: 0.1
        sleep 2
      end
    end
    7. times do
      sleep 2
      sample :snare_drum_hard, beat_stretch: 2, amp: 0.3
      sample :sn_generic, beat_stretch: 2, amp: 0.2
      sample :perc_impact_1, beat_stretch: 2, amp: 0.1
      sleep 2
    end
    stop
  end
end




sleep 32



bassnotes = [:e2, :e2, :e3, :e2, :e3, :a2, :a2, :a3, :a2, :a2, :a3, :b3, :a3, :fs3, :d3, :d2, :d2, :d3, :d2, :d3, :d2, :d2, :d3, :d2, :d3, :d2, :ds2, :ds3, :ds2]
basssleep = [1, 1, 1, 3, 2, 1.5, 0.5, 2, 1, 1, 0.1, 0.4, 0.5, 0.5, 0.5  , 1.5, 0.5, 1, 3, 2, 1.5, 0.5, 2, 1, 0.5, 0.5, 1, 0.5, 0.5]
blns = 0
live_loop :basslinell do
  use_synth :subpulse
  29. times do
    play bassnotes[blns], amp: 0.5
    sleep basssleep[blns]
    blns = blns + 1
  end
  blns = 0
  15. times do
    play bassnotes[blns], amp: 0.5
    sleep basssleep[blns]
    blns = blns + 1
  end
  blns = 0
  sleep 16
  29. times do
    play bassnotes[blns], amp: 0.5
    sleep basssleep[blns]
    blns = blns + 1
  end
  blns = 15
  sleep 16
  
  14. times do
    play bassnotes[blns], amp: 0.5
    sleep basssleep[blns]
    blns = blns + 1
  end
  
  blns = 0
  29. times do
    play bassnotes[blns], amp: 0.5
    sleep basssleep[blns]
    blns = blns + 1
  end
  stop
end


sleep 32
live_loop :padliveloop do
  2. times do
    padnotes :e2, :g3, :b3, :d4, :fs4, 4
    padnotes :e2, :g3, :b3, :d4, :fs4, 4
    padnotes :a2, :g3, :b3, :d4, :e4, 4
    padnotes :a2, :g3, :b3, :d4, :e4, 4
    padnotes :d2, :fs3, :a3, :cs4, :fs4, 4
    padnotes :d2, :fs3, :a3, :cs4, :fs4, 4
    padnotes :d2, :fs3, :a3, :cs4, :fs4, 4
    padnotes :d2, :fs3, :a3, :cs4, :fs4, 2
    padnotes :ds2, :b3, :a3, :fs4, :ds4, 2
  end
  sleep 16
  padnotes :d2, :fs3, :a3, :cs4, :fs4, 4
  padnotes :d2, :fs3, :a3, :cs4, :fs4, 4
  padnotes :d2, :fs3, :a3, :cs4, :fs4, 4
  padnotes :d2, :fs3, :a3, :cs4, :fs4, 2
  padnotes :ds2, :b3, :a3, :fs4, :ds4, 2
  stop
end

sleep 32

live_loop :belll do
  2. times do
    chorusbell :b5, :a5, :fs5, :e5
  end
  2. times do
    chorusbell :fs5, :e5, :d5, :cs5
  end
  sleep 16
  2. times do
    chorusbell :b5, :a5, :fs5, :e5
  end
  stop
end
