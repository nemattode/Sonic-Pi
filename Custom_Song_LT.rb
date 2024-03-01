use_bpm 120
use_synth :chipbass

a = 1
aa = 0.65
define :bp do
  play :c4
  sleep 1
  play :g4
  sleep 1
  play :b4
  sleep 1
  play :fs4
  sleep 1
end

define :tps do
  play :c3, amp: 0.1, sustain: 0.75
  sleep 1
  play :d2, amp: 0.1, sustain: 0.75
  sleep 1
end

define :lead2n do
  use_synth :chiplead
  play :e3, amp: a, sustain: 4
  sleep 4
  play :d3, amp: a, sustain: 4
  sleep 4
  play :c3, amp: a, sustain: 4
  sleep 4
  play :e3, amp: a, sustain: 1.5
  sleep 1
  play :c3, amp: a, sustain: 1.5
  sleep 1
  play :b2, amp: a, sustain: 1.5
  sleep 1
  play :e3, amp: a, sustain: 1.5
  sleep 1
end


define :leadn do
  use_synth :chiplead
  with_fx :compressor do
    play :g4, amp: aa, sustain: 2
    sleep 2
    play :g4, amp: aa, sustain: 2
    sleep 2
    play :e4, amp: aa, sustain: 2
    sleep 2
    play :e4, amp: aa, sustain: 2
    sleep 2
    play :g4, amp: aa, sustain: 1.5
    sleep 1
    play :fs4, amp: aa, sustain: 1.5
    sleep 1
    play :e4, amp: aa, sustain: 1.5
    sleep 1
    play :b4, amp: aa, sustain: 1.5
    sleep 1
    play :cs4, amp: aa, sustain: 2
    sleep 2
    play :cs4, amp: aa, sustain: 2
    sleep 2
    play :g4, amp: aa, sustain: 2
    sleep 2
    play :g4, amp: aa, sustain: 2
    sleep 2
    play :fs4, amp: aa, sustain: 2
    sleep 2
    play :fs4, amp: aa, sustain: 2
    sleep 2
    play :b4, amp: aa, sustain: 1.5
    sleep 1
    play :g4, amp: aa, sustain: 1.5
    sleep 1
    play :fs4, amp: aa, sustain: 1.5
    sleep 1
    play :b4, amp: aa, sustain: 1.5
    sleep 1
    play :c5, amp: aa, sustain: 2
    sleep 2
    play :c5, amp: aa, sustain: 2
    sleep 2
  end
end

live_loop :bpit do
  4. times do
    bp
  end
  stop
end
live_loop :tpsllt do
  4. times do
    tps
  end
  stop
end

sleep 18
live_loop :bpll do
  40. times do
    bp
  end
  stop
end
live_loop :leadll do
  4.times do
    leadn
  end
  stop
end
live_loop :tpsll do
  7.times do
    tps
  end
  stop
end

sleep 32
live_loop :lead2ll do
  8. times do
    lead2n
  end
  stop
end

