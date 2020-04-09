#!/bin/bash

function calc_rand () {
    floor=20;
    ceiling=70;
    range=$(($ceiling-$floor+1));
    rand_num=$RANDOM;
    let "rand_num %= $range";
    rand_num=$(($rand_num+$floor));
}