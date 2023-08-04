#!/bin/bash

points=(
  '1 5396.1235351562 -3284.2531738281 1635.166015625'
  '1 5190.90234375 -3286.8647460938 1648.2731933594'
  '1 5219.5610351562 -3512.447265625 1597.2125244141'
  '1 5377.734375 -3812.4587402344 1612.9720458984'
  '1 5633.396484375 -3791.0183105469 1621.0728759766'
  '1 5635.169921875 -3591.1184082031 1605.7205810547'
  '1 5725.08984375 -3455.1166992188 1593.9250488281'
  '1 5554.2075195312 -3333.7526855469 1581.3481445312'
  '1 5445.283203125 -3458.3520507812 1560.8725585938'
  '1 5454.0654296875 -3595.3630371094 1559.7736816406'
  '0 -888.56121826172 1446.8641357422 59.273445129395'
  '0 -884.69757080078 1675.6638183594 48.560729980469'
  '0 -1205.4011230469 1674.728515625 55.212249755859'
  '0 -1209.8946533203 1388.2758789062 54.554576873779'
  '1 5188.4448242188 -3047.7131347656 1572.9974365234'
  '1 5244.8837890625 -2706.7583007812 1509.373046875'
  '1 5465.7158203125 -2591.6684570312 1485.3720703125'
  '1 5516.7177734375 -2364.091796875 1466.8057861328'
  '1 5230.484375 -2383.7028808594 1432.9783935547'
  '1 4840.85546875 -2807.9226074219 1447.6455078125'
)

pointCount=${#points[@]}

for i in {70800..71999}; do
  n=$(($i % $pointCount))
  echo node cmd.js ".npcbot spawnto $i ${points[$n]} 0"
  # echo ${points[$n]}
  # echo $n
done
